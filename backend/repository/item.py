from backend.database import models
from sqlalchemy.orm.session import Session
from fastapi import HTTPException, status


def get_all(db: Session,):
    items = db.query(models.Item).all()
    return items


def get(id, db):
    item = db.query(models.Item).filter(models.Item.id == id).first()

    if not item:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND, detail=f"id {id} Not found")

    return item


async def get_all_in_category(id, db: Session):
    items = db.query(models.Item).filter(models.Item.type_id == id).all()
    return items


async def create(request, user_id, db: Session):
    new_item = models.Item(
        title=request.title,
        description=request.description,
        user_id=user_id,
        price=request.price,
        state=request.state,
        age=request.age
    )
    db.add(new_item)
    db.commit()
    db.refresh(new_item)
    return new_item


def delete(id, db):
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    item.delete(synchronize_session=False)
    db.commit()
    return {"done"}


def update(id, request, db):
    item = db.query(models.Item).filter(models.Item.id == id)

    if not item.first():
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND)

    item.update(request.dict())
    db.commit()

    return "done"
