#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from sqlalchemy.ext.associationproxy import association_proxy
from sqlalchemy.orm import relationship, object_session
import models.base
from models.culture import DbCulture
from models.types.id import Id, ForeignId
from models.types.integer import PositiveInteger
from models.types.string import String

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:43'


class DbRace(models.base.Base):
    """
        Rassen
    """
    id_ = Id('race_id')

    # Name der Rasse
    name = String(unique=True)

    # Kosten
    costs = PositiveInteger()

    # Startalter
    base_age = PositiveInteger()
    base_age_modifier = PositiveInteger()

    # Mögliche Kulturen
    cultures = association_proxy('_cultures', 'culture_name')


class DbRace2Culture(models.base.Base):
    """
        Mögliche Kulturen der Rasse
    """

    _race = ForeignId('race_id', DbRace.id_, primary_key=True)
    race = relationship(DbRace, backref="_cultures")

    _culture = ForeignId('culture_id', DbCulture.id_, primary_key=True)
    culture = relationship(DbCulture, backref="_races")
    culture_name = association_proxy('culture', 'name')

    def __init__(self, culture_name, **kwargs):
        super().__init__(**kwargs)

        self.culture = models.base.session.query(DbCulture).filter_by(name=culture_name).one()

