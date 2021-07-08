from os import name
from fastapi import FastAPI
from fastapi.params import Depends
from fastapi.staticfiles import StaticFiles
from .database import models
from .database import database
from .routers import item
from .routers import user
from .routers import authentication


app = FastAPI()

models.Base.metadata.create_all(bind=database.engine)

app.include_router(authentication.router)
app.include_router(item.router)
app.include_router(user.router)
app.mount('/static', StaticFiles(directory="static"), name="static")
