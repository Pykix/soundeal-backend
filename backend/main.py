from fastapi import FastAPI, Depends, status, HTTPException
from . import schemas, models
from .database import engine, SessionLocal
from sqlalchemy.orm import Session
from .hashing import Hash

app = FastAPI()

models.Base.metadata.create_all(bind=engine)


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get("/items", tags=['items'])
def all_items(db: Session = Depends(get_db)):
    items = db.query(models.Item).all()

    return items


@app.post('/item', status_code=status.HTTP_201_CREATED, tags=['items'],)
async def create_item(request: schemas.Item,
                      user_id: int,
                      db: Session = Depends(get_db)):
    new_item = models.Item(
        title=request.title,
        desc=request.desc,
        user_id=user_id
    )

    db.add(new_item)
    db.commit()
    db.refresh(new_item)
    return new_item


@app.delete("/item/{id}",
            status_code=status.HTTP_204_NO_CONTENT,
            tags=['items'])
async def delete_item(id: int, db: Session = Depends(get_db)):
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    db.commit()
    item.delete(synchronize_session=False)
    return {"done"}


@app.put('/item/{id}', status_code=status.HTTP_202_ACCEPTED, tags=['items'])
def update_item(id: int, request: schemas.Item, db: Session = Depends(get_db)):
    print(request)
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    item.update(request.dict())
    db.commit()

    return "done"


@app.get("/item/{id}", status_code=status.HTTP_200_OK, tags=['items'], response_model=schemas.ShowItem)
async def read_item(id: int, db: Session = Depends(get_db)):
    item = db.query(models.Item).filter(models.Item.id == id).first()

    if not item:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, detail=f"id {id} Not found")

    return item


# USER ENDPOINTS


@app.post('/user', tags=['users'])
async def create_user(request: schemas.User, db: Session = Depends(get_db)):

    new_user = models.User(
        username=request.username,
        password=Hash.hash_password(request.password),
        email=request.email
    )

    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user


@app.get('/user/{id}', response_model=schemas.ShowUser, tags=['users'])
def show_user(id: int, db: Session = Depends(get_db)):
    show_user = db.query(models.User).filter(models.User.id == id).first()
    return show_user
