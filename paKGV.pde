import processing.sound.*; /* Install Dulu library sound */
SoundFile file;

PImage person;
PImage cat;
PImage train;
float xTrain = -14280;
float xTrainBegin = -14280;
float xTrainStop = 1303;
int frame = 1;
boolean isBerubah = false;
boolean isLompat = false;
boolean isUp = false;
boolean trans = false;
boolean lagiJalan = false;
float xPerson = 565;
float yPerson = 250;
float xCat = 434;
float yCat = 370;
color background = #A2D9F6;

void setup() {
    size(1280, 720, P3D);
    person = loadImage("person1.png");
    cat = loadImage("kucing.png");
    train = loadImage("kereta1.png");
    file = new SoundFile(this, "backsound.mp3");
    file.play();
    hint(ENABLE_DEPTH_SORT);
    
}
float catIncrement = 10;
int sec;
void draw() {
    background(background);
    if (frame != 5) {
        pushMatrix();
        translate(0, 0, -50);
        bgErdi();
        popMatrix();
        pushMatrix();
        translate(0, 0, 30);
        kursi();
        popMatrix();
        
        pushMatrix();
        translate(0, 0, 50);
        image(person, xPerson, yPerson);
        popMatrix();
        
        if (frame == 2){
            pushMatrix();
            translate(0, 0, 50);
            image(cat, xCat, yCat);
            popMatrix();
        }
    } else {
        fin();
    }
    sec = parseInt(file.percent());
    
    pushMatrix();
    translate(0, 0, 51);
    image(train, xTrain, 0);
    popMatrix();    

    if (isLompat) {
        if (isUp) {
            yCat += 10;
            if (yCat == 370) {
                isLompat = false;
                isUp = false;
            }
        } else {
            yCat -= 10;
            if (yCat <= 250) {
                isUp = true;
            }
        }
    }
    
    if (sec == 50) {
        lagiJalan = true;
        trans = true;
    }
    
    if (sec == 81) {
        lagiJalan = true;
        trans = true;
    }
    
    if (sec == 96) {
        lagiJalan = true;
        trans = true;
    }
    
    if (sec == 0 && frame == 4) {
        lagiJalan = true;
        trans = true;
    }
    
    if (lagiJalan) {
        if (xTrain > xTrainStop) {
            xTrain = xTrainBegin;
            lagiJalan = false;
            
            if (frame == 3) {
                train = loadImage("kereta2.png");
            }
        }
        xTrain += 100;
    }
    
    if (xTrain == xTrainBegin + (100 * 100) && trans) {
        println("Berubah");
        trans = false;
        if (frame == 1) {
            // Menuju Frame 2
            lagiJalan = true;
            background = #16C6F5;
            person = loadImage("person2.png");
            yPerson = 205;
            frame++;
        } else if (frame == 2) {
            // Menuju frame 3
            lagiJalan = true;
            brightness(#ffffff);
            background = #FCBF2C;
            warnaAwan = #FCEE56;
            pohon1 = #98561D;
            pohon2 = #A96018;
            pohon3 = #935116;
            warnaTrotoar1 = #EA991E;
            warnaTrotoar2 = #E0B52E;
            warnaTrotoar3 = #F2CF49;
            jalanan = #351306;
            warnaPagar = #8B4211;
            warnaTiangPagar = #592708;
            warnaDimensiPagar = #592708;
            alasDuduk = #93461F;
            alasDudukFront = #4F240A;
            punggungKursi = #55240A;
            kakiKursi = #542B0A;
            person = loadImage("person3.png");
            yPerson = 205;
            frame++;
        } else if (frame == 3) {
            // Menuju frame 4
            xPerson = 10000;
            frame++;
        } else if (frame == 4) {
            // menuju frame 5
            background = #000000;
            frame++;
        }
    }
}

color warnaAwan = #E5E5E5;
color pohon1 = #349847;
color pohon2 = #267E31;
color pohon3 = #36A744;
color warnaTrotoar1 = #292936;
color warnaTrotoar2 = #5A491B;
color warnaTrotoar3 = #BBACB1;
color jalanan = #6A585D;
color warnaPagar = #2B2D35;
color warnaTiangPagar = #2B2D35;
color warnaDimensiPagar = #7D7D89;


// Kursi
color alasDuduk = #443A3C;
color alasDudukFront = #1A1618;
color kakiKursi = #0F0F15;
color punggungKursi = #1A1618;


void fin() {
        // F
        pushMatrix();
        stroke(#ffffff);
        strokeWeight(2);
        // translate(100, 100);
        noFill();
        beginShape();
        line(397.5, 125, 397.5, 556.73);
        line(397, 124.5, 561.63, 124.5);
        line(397, 273.84, 530.06, 273.84);
        endShape();
        
        // I
        beginShape();
        curveVertex(618.5, 125);
        curveVertex(618.5, 125);
        curveVertex(618.5, 557);
        curveVertex(618.5, 557);
        endShape();
        
        // N
        // bezier(701.6, 554, 696, 128, 883, 554, 876.28, 128);
        beginShape();
        curveVertex(701.6, 554);
        curveVertex(701.6, 554);
        curveVertex(696, 128);
        curveVertex(883, 554);
        curveVertex(876.28, 128);
        curveVertex(876.28, 128);
        endShape();
        noStroke();
        popMatrix();
}

void kursi() {
    pushMatrix();
    translate(0, -30, 0);
    // alas duduk
    fill(alasDuduk);
    quad(374, 460, 870, 460, 890, 490, 354, 490);
    fill(alasDudukFront);
    rect(354, 490, 535, 15);
    // kaki kursi
    fill(kakiKursi);
    rect(364, 505, 21, 83);
    rect(860, 505, 21, 83);
    pushMatrix();
    translate(0, 0, -1);
    rect(404, 329, 21, 220);
    rect(820, 329, 21, 220);
    popMatrix();
    // punggung kursi
    pushMatrix();
    fill(punggungKursi);
    translate(0, 0, 1);
    rect(374, 329, 494, 31);
    rect(374, 385, 494, 31);
    popMatrix();
    popMatrix();
}

float xAwan = 0;
float yAwan = 0;

void bgErdi() {
    //awan
    pushMatrix();
    translate(xAwan, yAwan, 20);
    awan(0,114,warnaAwan);
    if (frame == 2) {
        xAwan += 2;
    } else {
        xAwan++;
    }
    if (xAwan > 1526.0) {
        xAwan = -1472.0;
    }  
    if (frame == 2) {
        awan(600,100,warnaAwan);
        awan(320,120,warnaAwan);
        awan(900,120,warnaAwan);
        if (frame == 3) {
            yAwan = 30;
        }
    }
    
    popMatrix();
    
    // 3DDDDDD
    if (frame == 2) {
        pushMatrix();
        translate( -26, -40, -40);
        fill(#FFFF00);
        directionalLight(255, 255, 255, -1, 0, 0);
        sphere(109);
        noFill();
        noLights();
        popMatrix();
    }
    
    //pohon
    pushMatrix();
    translate(0,0, 30);
    pushMatrix();
    translate(0,0,12);
    pohon(100,370,pohon1);
    pohon(400,370,pohon2);
    popMatrix();
    if (frame < 3) {
        pohon(250,355,pohon3);
        pohon(500,350,pohon1);
    }
    pushMatrix();
    translate(0,0,9);
    pohon(620,360,pohon2);
    popMatrix();
    pushMatrix();
    translate(0,0,6);
    if (frame < 3) {
        pohon(700,400,pohon1);
    }
    popMatrix();
    pushMatrix();
    translate(0,0,3);
    pohon(1200,360,pohon3);
    pohon(880,340,pohon2);
    popMatrix();
    pohon(1070,370,pohon1);
    popMatrix();
    
    //pagar
    pushMatrix();
    translate(0,0,50);
    dasarPagar(warnaTrotoar1, warnaTrotoar2, warnaTrotoar3, jalanan);
    pagar(warnaPagar, warnaTiangPagar ,warnaDimensiPagar);
    popMatrix();
}


void keyPressed() {
    if (key == CODED) {
        if (keyCode == RIGHT && !lagiJalan && (sec < 47 || sec > 52) && (sec < 78 || sec > 83) && (sec < 93 || sec > 99) ) {
            println("Jalan");
            lagiJalan = true;
            trans = false;
        }else if (keyCode == UP && frame == 2){
            isLompat = true;
        }
    }
}

//AWAN KINTON
void awan(float x, float y, color awan) {
    noStroke();
    fill(awan);
    rect(x, y, 369, 82, 50);
    ellipse(x + 90, y - 10, 120, 118);
    ellipse(x + 190, y - 50 ,117, 118);
    ellipse(x + 290, y - 10, 117, 118);
    ellipse(x + 200, y - 5, 110, 100);
}

//POHON KEHIDUPAN
void pohon(float x, float y, color daun) {
    //batang pohon
    fill(#AD641F);
    stroke(2);
    rect(x - 15, y, 92, 210);
    //daun pohon
    fill(daun);
    stroke(2);
    ellipse(x - 5, y + 5, 180, 180);
    ellipse(x - 5, y - 55, 180, 180);
    
    ellipse(x + 55, y - 60, 180, 180);
    ellipse(x + 60, y, 180, 180);
    pushMatrix();
    translate(0,0,1);
    ellipse(x + 20, y - 125, 180, 180);
    popMatrix();
    
    noStroke();
    pushMatrix();
    translate(0,0,2);
    ellipse(x + 30,y - 20, 230, 280);
    popMatrix();
}

//TROTOAR
void dasarPagar(color warnaTrotoar1, color warnaTrotoar2, color warnaTrotoar3, color jalanan) {
    stroke(2);
    fill(warnaTrotoar1);
    rect(0,445,width,175);
    fill(warnaTrotoar2);
    rect(0,620,width,175);
    fill(warnaTrotoar3);
    rect(0,630,width,180);
    fill(jalanan);
    rect(0,645,width,200);
}

//PAGAR
void pagar(color warnaPagar, color warnaPagarDimensi, color warnaTiangPagar) {
    stroke(2);
    fill(warnaPagar);
    rect(0,230,width,10);
    rect(0,330,width,10);
    rect(0,410,width,10);
    
    //tiang pagar atau pagar depan
    pushMatrix();
    translate(0, 0, 2);
    fill(warnaPagarDimensi);
    rect(100,240,35,230);
    rect(600,240,35,230);
    rect(1100,240,35,230);
    popMatrix();
}

