
from fastapi.security.oauth2 import OAuth2PasswordRequestForm
from backend.authentication.jwttoken import ACCESS_TOKEN_EXPIRE_MINUTES
from backend.authentication.jwttoken import create_access_token
from datetime import timedelta
from fastapi.exceptions import HTTPException
from fastapi.param_functions import Depends
from sqlalchemy.orm.session import Session
from backend.authentication.hashing import Hash
from backend.database import models
from fastapi import APIRouter, status
from backend.database import database

router = APIRouter(
    tags=['Authentication']
)


@router.post('/login')
def login(request: OAuth2PasswordRequestForm = Depends(),
          db: Session = Depends(database.get_db)):
    user = db.query(models.User).filter(
        models.User.email == request.username).first()

    if not user:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail="Indentifants invalides")

    if not Hash.verify(request.password, user.password):
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail="Mdp invalides")

    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        data={"sub": user.email}, expires_delta=access_token_expires
    )
    return {"access_token": access_token, "token_type": "bearer",
            "user_id": user.id}
