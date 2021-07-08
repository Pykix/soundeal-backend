from logging import DEBUG
import os
import base64
import shutil
from fastapi.datastructures import UploadFile
from sqlalchemy.sql.operators import op
from backend.authentication import oauth2
from backend.repository import item
from backend.database import database
from backend.database import schemas
from typing import List
from fastapi import APIRouter, Depends, status, Response, File
from sqlalchemy.orm import Session
from fastapi.responses import FileResponse
from starlette.staticfiles import StaticFiles

router = APIRouter(
    prefix="/item",
    tags=['items']
)


@router.get("/",
            response_model=List[schemas.Item])
async def all_items(db: Session = Depends(database.get_db)):
    """Return all items

    Args:
        db (Session, optional): Database Session

    Returns:
        Item: Music Instrument
    """
    items = item.get_all(db)
    return items


@router.get('/category', response_model=List[schemas.Type])
async def all_categories(db: Session = Depends(database.get_db)):
    categories = await item.get_all_categories(db)
    return categories


@router.get("/category/{id}",
            response_model=List[schemas.Item])
async def all_category_items(id: int, db: Session = Depends(database.get_db)):
    """Return all items

    Args:
        db (Session, optional): Database Session

    Returns:
        Item: Music Instrument
    """
    items = await item.get_all_in_category(id, db)
    return items


@router.get("/{id}", status_code=status.HTTP_200_OK,
            response_model=schemas.ShowItem)
async def read_item(id: int, db: Session = Depends(database.get_db)):
    """Return Item by id

    Args:
        id (int): Item id
        db (Session, optional): Database Session.

    Returns:
        Item: Music Instrument
    """
    return item.get(id, db)


@router.get('/my-item/{user_id}', status_code=status.HTTP_200_OK,
            response_model=List[schemas.Item])
async def all_user_items(user_id: int, db: Session = Depends(database.get_db)):
    items = await item.get_all_user_items(user_id, db)
    return items


@router.post('/', status_code=status.HTTP_201_CREATED)
async def create_item(request: schemas.ItemAdd,
                      db: Session = Depends(database.get_db)):
    return item.create(request, db)


@router.delete("/{id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_item(id: int, db: Session = Depends(database.get_db)):
    return item.delete(id, db)


@router.put('/{id}', status_code=status.HTTP_202_ACCEPTED)
def update_item(id: int,
                request: schemas.Item,
                db: Session = Depends(database.get_db)):
    return item.update(id, request, db)


@router.post('/picture')
def picture(uploaded_file: UploadFile = File(...)):

    with open(f"assets/images/{uploaded_file.filename}", "wb") as file_object:
        shutil.copyfileobj(uploaded_file.file, file_object)
    return {"filename": uploaded_file.filename}
