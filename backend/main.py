from fastapi import FastAPI
from . import models
from .database import engine
from .routers import item
from .routers import user


app = FastAPI()

models.Base.metadata.create_all(bind=engine)

app.include_router(item.router)
app.include_router(user.router)
