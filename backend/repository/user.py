from fastapi.exceptions import HTTPException
from starlette import status
from backend.database import models
from sqlalchemy.orm.session import Session
from backend.authentication.hashing import Hash


def create(request, db: Session):

    new_user = models.User(
        username=request.username,
        password=Hash.hash_password(request.password),
        email=request.email
    )

    db.add(new_user)
    db.commit()
    db.refresh(new_user)

    return new_user


def get(id, db: Session):
    show_user = db.query(models.User).filter(models.User.id == id).first()
    if not show_user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)
    return show_user
