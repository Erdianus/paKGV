PImage person;
float xPerson = 580;
float yPerson = 311;

void setup() {
    size(1280, 720);
    person = loadImage("person1.png");
}

void draw() {
    bgErdi();
    image(person, xPerson, yPerson);
    // image(person2, 150, 0);
    // image(person3, 350, 0);
}

// ! ERDI

color background = #16C6F5;
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



void bgErdi() {
    
    //background = #16C6F5;
    
    background(background);
    //awan
    awan(0,114,warnaAwan);
    awan(320,120,warnaAwan);
    awan(600,100,warnaAwan);
    awan(900,120,warnaAwan);
    
    //pohon
    pohon(100,370,pohon1);
    pohon(400,370,pohon2);
    pohon(300,355,pohon3);
    pohon(600,360,pohon2);
    pohon(700,400,pohon3);
    pohon(500,350,pohon1);
    pohon(1070,370,pohon1);
    pohon(880,340,pohon2);
    pohon(1200,360,pohon3);
    
    
    //pagar
    pagar(warnaPagar, warnaTiangPagar ,warnaDimensiPagar);
    dasarPagar(warnaTrotoar1, warnaTrotoar2, warnaTrotoar3, jalanan);
    
    
    
    //System.out.println(mouseX+" "+mouseY);
}

void keyPressed() {
    if (key == CODED) {
        if (keyCode == UP) {
            background = #16C6F5;
            warnaAwan = #E5E5E5;
            pohon1 = #349847;
            pohon2 = #267E31;
            pohon3 = #36A744;
            warnaTrotoar1 = #292936;
            warnaTrotoar2 = #5A491B;
            warnaTrotoar3 = #BBACB1;
            jalanan = #6A585D;
            warnaPagar = #2B2D35;
            warnaTiangPagar = #2B2D35;
            warnaDimensiPagar = #7D7D89;
            person = loadImage("person1.png");
            xPerson = 580;
            yPerson = 311;
        } else if (keyCode == DOWN) {
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
        } 
    } else {
        background = #ff0000;
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
    ellipse(x + 20, y - 125, 180, 180);
    
    noStroke();
    ellipse(x + 30,y - 25, 210, 220);
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
    fill(warnaPagarDimensi);
    rect(100,240,35,230);
    rect(600,240,35,230);
    rect(1100,240,35,230);
    
}
