from backend.database import schemas
from backend.database import database
from backend.repository import user
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

router = APIRouter(
    prefix="/user",
    tags=['users']
)


@router.post('/')
async def create_user(request: schemas.User,
                      db: Session = Depends(database.get_db)):
    return user.create(request, db)


@router.get('/{id}', response_model=schemas.ShowUserWithOffer)
def show_user(id: int, db: Session = Depends(database.get_db)):
    return user.get(id, db)
