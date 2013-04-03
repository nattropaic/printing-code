void square(color c, float x, float y, float radius) {
    pushMatrix();
    translate(x, y);

    fill(c);
    rect(-radius, -radius, radius*2, radius*2);     

    popMatrix();
}

void setup() {
    size(900, 600);
    smooth();
    noStroke();
    noLoop();
    colorMode(HSB, 360, 100, 100);
}

void draw() {
    //background();
    translate(450, 300);

    float hue = random(360);
    float saturation = random(60, 100);
    float value = 100;

    square(color(hue, saturation, value), -100, 0, 100);
    square(color((hue + 180) % 360, saturation, value), 100, 0, 100);
}

void mouseClicked() {
    redraw();
}

