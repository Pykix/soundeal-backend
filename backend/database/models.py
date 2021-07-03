from sqlalchemy import Column, Integer, String, ForeignKey

from .database import Base
from sqlalchemy.orm import relationship


class InstrumentType(Base):
    __tablename__ = "instrument_type"

    id = Column(Integer, primary_key=True, index=True)
    type = Column(String)

    items = relationship("Item", back_populates="type")


class Item(Base):
    __tablename__ = "items"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String)
    desc = Column(String)
    state = Column(String)
    price = Column(Integer)

    user_id = Column(Integer, ForeignKey("users.id"))
    type_id = Column(Integer, ForeignKey("instrument_type.id"))

    user = relationship("User", back_populates="items")
    type = relationship("InstrumentType", back_populates="items")


class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String)
    password = Column(String)
    email = Column(String)

    items = relationship("Item", back_populates="user")
