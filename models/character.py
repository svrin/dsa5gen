#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from sqlalchemy.orm import relationship
from models.attribute import DbAttribute
from models.base import Base
from models.culture import DbCulture
from models.profession import DbProfession
from models.race import DbRace
from models.types.id import ForeignId, Id
from models.types.integer import PositiveInteger

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:37'


class DbCharacter(Base):
    """
        Character
    """
    id_ = Id('character_id')

    # Rasse des Character
    _race = ForeignId('race_id', DbRace.id_)
    race = relationship(DbRace)

    # Kultur des Character
    _culture = ForeignId('culture_id', DbCulture.id_)
    culture = relationship(DbCulture)

    # Profession des Character
    _profession = ForeignId('profession_id', DbProfession.id_)
    profession = relationship(DbProfession)


class DbCharacter2Attribute(Base):
    """
        Attribute des Character
    """

    _character = ForeignId('character_id', DbCharacter.id_, primary_key=True)
    character = relationship(DbCharacter)

    _attribute = ForeignId('attribute_id', DbAttribute.id_, primary_key=True)
    attribute = relationship(DbAttribute)

    # Wert
    value = PositiveInteger()


