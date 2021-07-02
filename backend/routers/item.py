from backend import oauth2
from backend.repository import item
from backend import database
from backend import schemas
from typing import List
from fastapi import APIRouter, Depends, status
from sqlalchemy.orm import Session

router = APIRouter(
    prefix="/item",
    tags=['items']
)


@router.get("/",

            response_model=List[schemas.ShowItem])
def all_items(db: Session = Depends(database.get_db),
              get_current_user: schemas.User = Depends(oauth2.get_current_user)):
    """Return all items

    Args:
        db (Session, optional): Database Session

    Returns:
        Item: Music Instrument
    """
    items = item.get_all(db)
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


@router.post('/', status_code=status.HTTP_201_CREATED)
async def create_item(request: schemas.Item, user_id: int,
                      db: Session = Depends(database.get_db)):
    return item.create(request, user_id, db)


@router.delete("/{id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_item(id: int, db: Session = Depends(database.get_db)):
    return item.delete(id, db)


@router.put('/{id}', status_code=status.HTTP_202_ACCEPTED)
def update_item(id: int,
                request: schemas.Item,
                db: Session = Depends(database.get_db)):
    return item.update(id, request, db)
