#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from sqlalchemy.ext.associationproxy import association_proxy
from sqlalchemy.orm import relationship, backref
from sqlalchemy.orm.collections import attribute_mapped_collection
import models.base
from models.profession import DbProfession
from models.types.enum import Enum
from models.types.id import Id, ForeignId
from models.types.integer import PositiveInteger
from models.types.string import String

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:48'


class DbCulture(models.base.Base):
    """
        Rassen
    """
    id_ = Id('culture_id')

    # Name der Kultur
    name = String(unique=True)

    # Kosten
    costs = PositiveInteger()

    # Mögliche Professionen
    professions = association_proxy('_professions', 'profession_name')


class DbCulture2Profession(models.base.Base):
    """
        Mögliche Professionen der Kultur
    """

    _culture = ForeignId('culture_id', DbCulture.id_, primary_key=True)
    culture = relationship(DbCulture, backref="_professions")

    _profession = ForeignId('profession_id', DbProfession.id_, primary_key=True)
    profession = relationship(DbProfession, backref="_cultures")
    profession_name = association_proxy('profession', 'name')

    def __init__(self, profession_name, **kwargs):
        super().__init__(**kwargs)

        self.profession = models.base.session.query(DbProfession).filter_by(name=profession_name).one()