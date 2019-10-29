

public class Line{
   
  
  //make line  
  Line(){
   
    stroke(random(255),random(255),random(255));   
    strokeWeight(2);
    line(mouseX+20, mouseY+20, pmouseX, pmouseY); 
    
  }    
}
