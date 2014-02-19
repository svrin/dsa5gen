#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""
    Base class for all models
"""
import re
from sqlalchemy import Column, DateTime, text, func
from sqlalchemy.ext.declarative import declared_attr, declarative_base
from sqlalchemy.sql import schema

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:34'

metadata = schema.MetaData()


class Base(object):
    """
        Base class for all database models
    """

    @declared_attr
    def __tablename__(cls):
        name = cls.__name__

        # Prevent Database Models not starting with Db
        if name.startswith("Db"):
            name = name[2:]
        else:
            return None

        def dashlower(match):
            return '_%s' % match.group(0).lower()

        name = re.sub('([A-Z]|\d+)', dashlower, name).lstrip("_")
        return name

    @declared_attr
    def __table_args__(cls):
        return {'useexisting': True}

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def __asdict__(self):
        values = vars(self)
        for attr in self.__mapper__.columns.keys():
            if attr in values:
                yield attr, values[attr]

    def __repr__(self):
        return "<%s %s />" % (self.__class__.__name__, " ".join("%s='%s'" % (k, v) for k, v in self.__asdict__()))

