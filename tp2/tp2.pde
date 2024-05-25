// Facundo Colavita
//comisión 1
//legajo: 118996/3


PImage arrow;
PImage flecha;
PImage parteD;
PImage FinalI;
float flechaA = -216; 
boolean Mparted = false; 
boolean Mtitle = false;
int segT = 0;
int ptitle;
int tit = 0;
int pj = 0;
String[] desc = {
  "Arrow sigue la vida de Oliver Queen,",
  "un multimillonario playboy que se convierte",
  "en un vigilante encapuchado conocido como Green Arrow."
};




String[] personajes = {
  "PERSONAJES",
  "Oliver Queen",
  "John Diggle",
  "Felicity Smoak",
  "Laurel Lance",
  "Thea Queen"
}; 




void setup() {
  size(640, 480);
  arrow = loadImage("tituloA.png");
  flecha = loadImage("flect.png");
  parteD = loadImage("arrow.jpg");
  FinalI = loadImage("final.jpg");
}





void draw() {
  background(0); 


// hacer que la flecha se mueva a la derecha
  if (!Mparted) {
    image(arrow, 160, 130, 300, 140);
    image(flecha, flechaA, 25, 700, 400); 
    flechaA += 2; 

    if (flechaA > width) {
      Mparted = true;
      segT = millis(); 
      ptitle = height; 
    }
  } else {
    image(parteD, 0, 0, width, height);
    
    

    textSize(16); 
    fill(255);
    textAlign(CENTER, TOP); 
    

    
    text(desc[0], width/2, ptitle - 40); 
    text(desc[1], width/2, ptitle - 20); 
    text(desc[2], width/2, ptitle); 

    ptitle -= 1;

   
    if (millis() - segT > 3000) { 
      segT = millis();
      tit++;
    }
    
    

    if (tit >= 1) {
      Mtitle = true;
    }
  }
  
  
  

  if (Mtitle) {
    image(FinalI, 0, 0, width, 480);
    
    

    textAlign(CENTER, TOP);
    textSize(20);
    fill(255);
    
    
    
    

  
    if (pj < personajes.length) {
      text(personajes[pj], width/2, 50 + pj * 30);
    }
    
    

    fill(255);
    rectMode(CENTER);
    rect(width/2, height - 50, 100, 40);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Reset", width/2, height - 50);

  
    if (millis() - segT > 2000) { // Cambiar cada 2 segundos
      segT = millis();
      pj++;
    }
  }
}




void mousePressed() {
  if (Mtitle && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height - 70 && mouseY < height - 30) {
    reiniciar();
  }
}



void reiniciar() {
  Mparted = false;
  Mtitle = false;
}
