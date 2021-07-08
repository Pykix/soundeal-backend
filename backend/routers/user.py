from backend.database import schemas
from backend.database import database
from backend.repository import user
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from backend.authentication import oauth2
router = APIRouter(
    prefix="/user",
    tags=['users']
)


@router.post('/new-user', response_model=schemas.ShowUser)
def create_user(request: schemas.User,
                db: Session = Depends(database.get_db)):
    return user.create(request, db)


@router.get('/{id}', response_model=schemas.ShowUserWithOffer)
def show_user(id: int, db: Session = Depends(database.get_db),
              permission:
              schemas.User = Depends(oauth2.permission_to_show)):
    return user.get(id, db)


@router.put('/{id}')
def update_user_password(id: int, request: schemas.ChangePassword,
                         db: Session = Depends(database.get_db),
                         permission:
                         schemas.User = Depends(oauth2.permission_to_show)):
    return user.password_update(id, request, db)
