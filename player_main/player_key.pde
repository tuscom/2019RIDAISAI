//key入力の部分
//ここでキーのコードは完結させること

public class player_key{
  public int[] key_xy = {0, 0};//wキーでkey_xy[1] = -1、aキーでkey_xy[0] = -1、sとdキーはその逆が入れられるようにする。 
  
  public player_key(){
    println("instance player_key");
  }
  
  public void EarlyUpdate(){
  
  }
  
  public void LateUpdate(){
  
  }
  
  public boolean IsOnKey(String key_name){//引数のキーが押された直後が判定する。returnは適宜変更
  return false;
  }
}
