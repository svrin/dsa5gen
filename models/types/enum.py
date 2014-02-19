#!/usr/bin/python
# -*- encoding: utf-8 -*-
"""

"""
from formencode.validators import OneOf as fvEnum
from sqlalchemy import Column
from sqlalchemy import Enum as sqEnum
from sqlalchemy.orm import column_property

__author__ = 'Severin Orth <severin.orth@st.ovgu.de>'
__date__ = '04.06.13 - 21:18'


def Enum(*args, **kwargs):
    """
        SQLAlchemy Column representing an enum

        :param name: name of the column
        :param enum_name: name of the enum (required for postgresql)

        :param args: elements of enum

        :param kwargs: * hideList: keep list of values out of error messages
                       * convert_unicode: passwed to sqlalchemy.Enum
                       * else: passed to sqlalchemy.Column

        :returns: >>> column_property(Column(Enum(*args, native_enum=False), nullable=False, default=False),
                  info={type='enum', validator=Enum()})
        :rtype: :class:`str`
    """

    fvargs = dict(hideList=True)
    fvargs.update({k: v for k, v in kwargs.items() if k in fvargs})

    sqargs = dict(convert_unicode=None, native_enum=False)
    sqargs.update({k: v for k, v in kwargs.items() if k in sqargs})

    dwargs = dict(nullable=False)
    dwargs.update({k: v for k, v in kwargs.items() if k not in fvargs and k not in sqargs})

    column = Column(sqEnum(*args, **sqargs), **dwargs)
    column.validator = fvEnum(args, **fvargs)

    fmargs = {'type': 'Select', 'options': args}
    return column_property(column, info=fmargs)
