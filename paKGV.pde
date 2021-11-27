PImage person;
PImage train;
PShape person1;
// float xPerson = 580;
// float yPerson = 311;
float xTrain = -13280;
float xTrainBegin = -13280;
float xTrainStop = 1303;
float frame = 1;
boolean isBerubah = false;
boolean lagiJalan = false;
float xPerson = 565;
float yPerson = 241;

void setup() {
    size(1280, 720, P3D);
    person = loadImage("person1.png");
    train = loadImage("kereta1.png");
    person1 = loadShape("person1.svg");
}

void draw() {
    pushMatrix();
    translate(0, 0, -50);
    bgErdi();
    popMatrix();
    translate(0, 0, 50);
    kursi();
    pushMatrix();
    translate(0, 0, 100);
    image(person, xPerson, yPerson);
    image(train, xTrain, 0);
    // shape(person1, xPerson, yPerson);
    popMatrix();
    
    pushMatrix();
    translate(0, 0, 200);
    popMatrix();
    
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
    
    if (xTrain == xTrainBegin + (100 * 20)) {
        if (frame == 1) {
            lagiJalan = true;
            background = #16C6F5;
            person = loadImage("person2.png");
            xPerson = 583;
            yPerson = 270;
            frame++;
        } else if (frame == 2) {
            lagiJalan = true;
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
            person = loadImage("person3.png");
            xPerson = 599;
            yPerson = 267;
            frame++;
        } else if (frame == 3) {
            xPerson = 10000;
        }
    }
    
    // image(person2, 150, 0);
    // image(person3, 350, 0);
}

// ERDI

color background = #A2D9F6;
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
void kursi(){
    pushMatrix();
    translate(0, -30, 0);
    // alas duduk
    fill(#443A3C);
    quad(374, 460, 870, 460, 890, 490, 354, 490);
    fill(#1A1618);
    rect(354, 490, 535, 15);
    // kaki kursi
    fill(#0F0F15);
    rect(364, 505, 21, 83);
    rect(860, 505, 21, 83);
    pushMatrix();
    translate(0, 0, -1);
    rect(404, 329, 21, 220);
    rect(820, 329, 21, 220);
    popMatrix();
    // punggung kursi
    pushMatrix();
    fill(#1A1618);
    translate(0, 0, 1);
    rect(374, 329, 494, 31);
    rect(374, 385, 494, 31);
    popMatrix();
    popMatrix();
}

void bgErdi() {
    
    //background= #16C6F5;
    background(background);
    //awan
    awan(0,114,warnaAwan);
    awan(600,100,warnaAwan);
    awan(320,120,warnaAwan);
    awan(900,120,warnaAwan);
    //pohon
    pushMatrix();
    translate(0,0, 30);
    pushMatrix();
    translate(0,0,12);
    pohon(100,370,pohon1);
    pohon(400,370,pohon2);
    popMatrix();
    pohon(250,355,pohon3);
    pohon(500,350,pohon1);
    pushMatrix();
    translate(0,0,9);
    pohon(620,360,pohon2);
    popMatrix();
    pushMatrix();
    translate(0,0,6);
    pohon(700,400,pohon1);
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
        if (keyCode == RIGHT) {
            println("Jalan");
            lagiJalan = true;
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
    
    //dimensi pagar
    fill(warnaTiangPagar);
    rect(0,227,width,3);
    rect(0,327,width,3);
    rect(0,407,width,3);
    rect(135,240,3,230);
    rect(635,240,3,230);
    rect(1135,240,3,230);
    
    //tiang pagar
    pushMatrix();
    translate(0, 0, 2);
    fill(warnaPagarDimensi);
    rect(100,240,35,230);
    rect(600,240,35,230);
    rect(1100,240,35,230);
    popMatrix();
}