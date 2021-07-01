from fastapi import FastAPI, Depends, status, HTTPException
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


@app.get("/items")
async def all_items(db: Session = Depends(get_db)):
    items = db.query(models.Item).all()
    return items


@app.post('/item', status_code=status.HTTP_201_CREATED)
async def create_item(request: schemas.Item, db: Session = Depends(get_db)):
    new_item = models.Item(
        title=request.title,
        desc=request.desc,
    )

    db.add(new_item)
    db.commit()
    db.refresh(new_item)
    return new_item


@app.delete("/item/{id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_item(id: int, db: Session = Depends(get_db)):
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    db.commit()
    item.delete(synchronize_session=False)
    return {"done"}


@app.put('/item/{id}', status_code=status.HTTP_202_ACCEPTED)
def update_item(id: int, request: schemas.Item, db: Session = Depends(get_db)):
    print(request)
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    item.update(request.dict())
    db.commit()

    return "done"


@app.get("/item/{id}", status_code=status.HTTP_200_OK)
async def read_item(id: int, db: Session = Depends(get_db)):
    item = db.query(models.Item).filter(models.Item.id == id).first()

    if not item:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, detail=f"id {id} Not found")

    return item
