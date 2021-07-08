
from sqlalchemy import Column, Integer, String, ForeignKey

from .database import Base
from sqlalchemy.orm import relationship


class InstrumentType(Base):
    __tablename__ = "instrument_type"

    id = Column(Integer, primary_key=True, index=True)
    type = Column(String)
    picture = Column(String, default="")

    items = relationship("Item", back_populates="type")


class Item(Base):
    __tablename__ = "items"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, nullable=False)
    description = Column(String)
    state = Column(String)
    price = Column(Integer, nullable=False)
    age = Column(Integer)

    user_id = Column(Integer, ForeignKey("users.id"))
    type_id = Column(Integer, ForeignKey("instrument_type.id"))

    user = relationship("User", back_populates="items")
    type = relationship("InstrumentType", back_populates="items")


class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String)
    password = Column(String)
    email = Column(String, unique=True)

    items = relationship("Item", back_populates="user")
