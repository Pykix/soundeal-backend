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
    id: int

    class Config:
        orm_mode = True


class Type(BaseModel):
    id: int
    type: str
    picture: str

    class Config:
        orm_mode = True


class Item(BaseModel):
    id: int
    title: str
    description: str
    state: str
    price: int
    age: int
    user_id: int
    type_id: int

    class Config:
        orm_mode = True


class ItemAdd(BaseModel):
    title: str
    description: str
    state: str
    price: int
    age: int
    user_id: int
    type: str

    class Config:
        orm_mode = True


class ItemWhithoutId(BaseModel):
    title: str
    description: str
    state: str
    price: int
    age: int
    user_id: int
    type_id: int

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


class ChangePassword(BaseModel):
    password: str
