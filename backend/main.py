from fastapi import FastAPI
from . import models
from .database import engine
from .routers import item
from .routers import user
from .routers import authentication


app = FastAPI()

models.Base.metadata.create_all(bind=engine)

app.include_router(authentication.router)
app.include_router(item.router)
app.include_router(user.router)
