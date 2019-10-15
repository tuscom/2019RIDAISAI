
public void collision_bullets(shapebullet_object[] objects, shapebullet_mybullet[] bullets){
  for(int i=0; i<objects.length; i++){
    for(int j=0;j<bullets.length;j++){
      collision_bullet(objects[i], bullets[j]);
    }
  }
}

private void collision_bullet(shapebullet_object obj, shapebullet_mybullet bullet){
  if (obj != null && bullet != null) if(collisionCircleAndCircle(obj, bullet)){
    bullet.hitPlanet();
    obj.hitPlanet();
  }
}

//void collisionObjectAndObject(CBaseObject IObject1[], CBaseObject IObject2[])
//{
//  for (int i = 0; i < IObject1.length; i++){
//    for (int j = 0; j< IObject2.length; j++)
//    {
//      collisionObjectAndObject(IObject1[i], IObject2[j]);
//    }
//  }
//}

//void collisionObjectAndObject(CBaseObject IObject1, CBaseObject IObject2)
//{
//  if (IObject1 != null && IObject2 != null) if (collisionCircleAndCircle(IObject1, IObject2))
//{
//    if (IObject1.getClass() == CNormalPlanet.class && IObject1.getClass() == CNormalPlanet.class)
//    {
//      IObject1.hitPlanet();
//      IObject2.hitPlanet();
//    }
//}
  
//}

boolean collisionCircleAndCircle(shapebullet_object IObject1, shapebullet_mybullet IObject2)
{
  return distance(IObject1.getX(), IObject1.getY(), IObject2.getX(), IObject2.getY()) < (IObject1.getSize() + IObject2.getSize())*0.5;
}

float distance(float x1, float y1, float x2, float y2){
return sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2))+0.01;
}
