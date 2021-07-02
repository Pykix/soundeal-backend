from typing import List, Optional
from pydantic import BaseModel


class User(BaseModel):

    username: str
    password: str
    email: str

    class Config:
        orm_mode = True


class ShowUser(BaseModel):
    username: str
    email: str

    class Config:
        orm_mode = True


class Item(BaseModel):
    title: str
    desc: str

    class Config:
        orm_mode = True


class ShowUserWithOffer(ShowUser):
    items: List[Item]

    class Config:
        orm_mode = True


class ShowItem(Item):
    user: ShowUser

    class Config:
        orm_mode = True


class Login(BaseModel):
    username: str
    password: str


class Token(BaseModel):
    access_token: str
    token_type: str


class TokenData(BaseModel):
    email: Optional[str] = None
