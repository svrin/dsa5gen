#!/usr/bin/python3.3
# -*- coding: utf-8 -*-
"""
    
"""
from _socket import gethostname
from urllib.parse import urljoin
from sqlalchemy import create_engine, schema
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, scoped_session

import tornado_restless

from tornado.ioloop import IOLoop
from tornado.options import options, define
from tornado.web import Application
from tornado_menumaker import routes
import yaml

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '24.03.13'

define('template_path', 'templates')
define('static_path', 'static')

define('port', 4010, help="Port of application")
define('host', help="Bind interface of application")


class BaseApplication(Application):
    """
        Base Application
    """

    def __init__(self, *args, **kwargs):
        kwargs.update(options.items())
        kwargs.setdefault('handlers', []).extend(routes())

        super().__init__(*args, **kwargs)

        self.initialize()

    @property
    def port(self):
        """
            Port of application
        """
        return "port" in self.settings and self.settings["port"] or options["port"]

    @property
    def host(self):
        """
            Host of application
        """
        return "host" in self.settings and self.settings["host"] or None

    def listen(self, **kwargs):
        """
            Register the Application to a port/address
        """

        # xheaders in settings?
        kwargs['xheaders'] = kwargs.get('xheaders', self.settings.get('xheaders', False))

        # Check for host setting
        if not self.host:
            realaddress = urljoin('http://%s:%s' % (gethostname().split(".")[0], self.port), '.')
            super().listen(port=self.port, **kwargs)
        else:
            realaddress = urljoin('http://%s:%s' % (self.host, self.port), '.')
            super().listen(port=self.port, address=self.host, **kwargs)

        # Return connected interface
        return realaddress

    @staticmethod
    def start():
        """
            Start the IO Loop
        """
        try:
            IOLoop.instance().start()
        except KeyboardInterrupt:
            pass

    def initialize(self):
        """
            Raise UP all apis
        """

        # Init SQLAlchemy
        engine = create_engine('sqlite:///:memory:')
        metadata = schema.MetaData()
        session_maker = sessionmaker(bind=engine)

        # Init Restless
        restless = tornado_restless.ApiManager(application=self, session_maker=session_maker)

        # Set the Base object
        import models.base
        models.base.Base = declarative_base(metadata=metadata, cls=models.base.Base)

        # Import the stuff
        from models.attribute import DbAttribute
        from models.character import DbCharacter
        from models.culture import DbCulture
        from models.profession import DbProfession
        from models.race import DbRace

        # Add models to restless
        restless.create_api(DbAttribute)
        restless.create_api(DbCharacter)
        restless.create_api(DbCulture)
        restless.create_api(DbProfession)
        restless.create_api(DbRace)

        # Create all
        metadata.create_all(engine)

        # Create a session
        models.base.session = session = session_maker()

        # Add the stuff
        with open("models/values/attribute.yaml") as f:
            attributes = yaml.load(f)
            for attribute in attributes:
                session.add(DbAttribute(**attribute))

        # Add the stuff
        with open("models/values/profession.yaml") as f:
            professions = yaml.load(f)
            for profession in professions:
                session.add(DbProfession(**profession))

        # Add the stuff
        with open("models/values/culture.yaml") as f:
            cultures = yaml.load(f)
            for culture in cultures:
                session.add(DbCulture(**culture))

        # Add the stuff
        with open("models/values/race.yaml") as f:
            races = yaml.load(f)
            for race in races:
                session.add(DbRace(**race))

        # Commit the stuff
        session.commit()




