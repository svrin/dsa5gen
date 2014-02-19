#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from models.base import Base
from models.types.id import Id
from models.types.string import String

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '19.02.14 - 19:57'


class DbAttribute(Base):
    """
        Eigenschaftem
    """
    id_ = Id('attribute_id')

    # Name der Eigenschaft
    name = String()

    # Tag der Eigenschaft
    tag = String(unique=True)



