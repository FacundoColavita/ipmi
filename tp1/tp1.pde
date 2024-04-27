PImage img;                 // Facundo Colavita
                            //comisión 1
void setup() {              //legajo: 118996/3
  img = loadImage ("panda.jpg");
  size(800,400);
}
void draw(){
  background(255,240,0);
  image(img,0,0,400,400);
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
  fill(255);
  noStroke();
  
  fill(255,170,0);
  ellipse(513,370,140,290);
  
  fill(5);
  ellipse(590,370,220,290);
  
  fill(200); //orejas en una capa atras de la cabeza
  triangle(650,50,748,15,723,173);
  triangle(554,52,445,24,479,145);
  
  fill(255,70,0);
  triangle(475,53,531,61,492,110);
  triangle(724,49,666,67,708,123);
  
  fill(250,120,0);
   ellipse(600,200,270,340);
   
   fill(255,180,0);
   ellipse(555,199,50,50);
   ellipse(636,199,50,50);
   
  fill(0);
   circle (555,200,30);
   circle (635,200,30);
   
  fill(100);
  circle (555,200,20);
  circle (635,200,20);
  
  fill(50);
  circle (555,200,13);
  circle (635,200,13);
  
  fill(200);
  ellipse(595,300,77,70);
 
  fill(10);
  ellipse(595,285,70,80);
  
  fill(250,0,100);
  rect(572,265,46,35);
  circle(595,300,46);
  
  fill(200);
  ellipse(572,243,40,70);
    ellipse(619,243,40,70);
      ellipse(596,254,77,48);
        ellipse(596,220,48,77);
    quad(517,188,534,193,521,278,504,243);
    quad(659,192,683,196,691,251,680,282);
    quad(580,174,563,153,569,141,585,146);
    quad(618,175,610,147,630,142,630,154);
      
        
  fill(0);
  ellipse(595,250,40,50);
  
  fill(255);
  stroke(255);
  line(624,245,688,298);
  line(627,259,697,290);
  line(621,253,692,276);
  line(623,237,680,266);
  
  line(569,242,513,246);
  line(564,247,512,273);
  line(570,267,508,279);
  line(570,253,517,298);
}
