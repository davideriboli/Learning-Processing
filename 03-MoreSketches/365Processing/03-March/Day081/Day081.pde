/* Source Cited:
 
 Nature of Code by Daniel Shiffman
 Chapter 5: Physics Libraries
 http://natureofcode.com
 
 Toxiclib Library Example
 Draggable Particles
 
*/

// import libraries
import toxi.geom.*;
import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import java.util.Iterator;

VerletPhysics2D physics;
ArrayList <Cluster> clusters;


void setup() {
  size(500, 500);
  noStroke();
  smooth();
  physics = new VerletPhysics2D();
  physics.setDrag (1);
  clusters = new ArrayList<Cluster>();
  
  for (int i = 0; i < 1; i += 1) {
    clusters.add(new Cluster(random(2,20), random(255)));
  }
}

void draw() {
//  saveFrame("output2/frames#################.png");

  background(255);
  physics.update();
  for (Cluster c: clusters) {
    c.display();
  }
}

  

