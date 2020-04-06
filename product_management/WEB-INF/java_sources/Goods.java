package thinkonweb.bean;
import java.util.Date;
import java.io.Serializable;
public class Goods implements Serializable{
  
  private String title;
  private int price;
  private String code;
  private int num;
  private String contents;
  
  public Goods() {
  }
  
  public String getTitle(){
    return title;
    }
    public int getNum(){
    return num;
    }
  public int getPrice(){
    return price;
    }
  public String getCode(){
    return code;
    }
  public String getContents(){
    return contents;
    }
  public void setTitle(String title){
    this.title=title;
  }
  public void setPrice(int price){
    this.price=price;
  }
  public void setCode(String code){
    this.code=code;
  }
  public void setNum(int num){
    this.num=num;
  }
  public void setContents(String contents){
    this.contents=contents;
  }
}