public class Rectangle {

    private final Point pt1;
    private final Point pt2;

    public Rectangle(Point p1, Point p2) {
        this.pt1 = p1;
        this.pt2 = p2;
    }

    public int largeur() {
        return (Math.abs(this.pt2.getX()-this.pt1.getX()));

    }
    public int hauteur() {
        return (Math.abs(this.pt2.getY()-this.pt1.getY()));
    }

    public Point getPoint1() {
        return this.pt1;
    }

    public Point getPoint2() {
        return this.pt2;
    }

    public int perimetre() {
        return (2*(this.hauteur() + this.largeur()));
    }

    public float surface() {
        return this.hauteur()*this.largeur();
    }



}
