#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from sqlalchemy.ext.associationproxy import association_proxy
from sqlalchemy.orm import relationship, backref
from sqlalchemy.orm.collections import attribute_mapped_collection
from models.attribute import DbAttribute
import models.base
from models.types.id import Id, ForeignId
from models.types.integer import PositiveInteger
from models.types.string import String

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:52'


class DbProfession(models.base.Base):
    """
        Profession
    """
    id_ = Id('profession_id')

    # Name der Profession
    name = String(unique=True)

    # Kosten
    costs = PositiveInteger()

    # Minimale Attribute
    min = association_proxy('_min', 'value')


class DbProfession2MinAttribute(models.base.Base):
    """
        Mindestattribute der Profession
    """

    _profession = ForeignId('profession_id', DbProfession.id_, primary_key=True)
    profession = relationship(DbProfession, backref=backref("_min", collection_class=attribute_mapped_collection('attribute_tag')))

    _attribute = ForeignId('attribute_id', DbAttribute.id_, primary_key=True)
    attribute = relationship(DbAttribute)
    attribute_tag = association_proxy('attribute', 'tag')

    # Wert
    value = PositiveInteger()

    def __init__(self, attribute_tag, value, **kwargs):
        super().__init__(**kwargs)

        self.attribute = models.base.session.query(DbAttribute).filter_by(tag=attribute_tag).one()
        self.value = value







