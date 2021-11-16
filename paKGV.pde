PImage person1;
PImage person2;
PImage person3;

void setup() {
    size(1280, 720);
    noStroke();
    person1 = loadImage("person1.png");
    person2 = loadImage("person2.png");
    person3 = loadImage("person3.png");
}

void draw() {
    image(person1, 0, 0);
    image(person2, 150, 0);
    image(person3, 350, 0);
}
