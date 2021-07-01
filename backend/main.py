from fastapi import FastAPI, Depends
from . import schemas, models
from .database import engine, SessionLocal
from sqlalchemy.orm import Session
app = FastAPI()

models.Base.metadata.create_all(bind=engine)


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.post('/item')
async def create_item(request: schemas.Item, db: Session = Depends(get_db)):
    new_item = models.Item(
        title=request.title,
        desc=request.desc,
    )

    db.add(new_item)
    db.commit()
    db.refresh(new_item)
    return new_item


@app.get("/items")
async def all_items(db: Session = Depends(get_db)):
    items = db.query(models.Item).all()
    return items
