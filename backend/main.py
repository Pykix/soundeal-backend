from fastapi import FastAPI
from . import schemas

app = FastAPI()


@app.post('/item')
async def create_item(item: schemas.Item):
    return item
