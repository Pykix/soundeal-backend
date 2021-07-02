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
    user_id: int

    class Config:
        orm_mode = True


class ShowItem(Item):
    user: ShowUser

    class Config:
        orm_mode = True
