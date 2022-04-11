public class Cercle {

    private final Point pt1;
    private final Point pt2;

    public Cercle(Point p1, Point p2) {
        this.pt1 = p1;
        this.pt2 = p2;
    }

    public double rayon() {
        return Point.distance(this.pt1, this.pt2);
    }

    public double diametre() {
        return 2*rayon();
    }

    public Point getPoint1() {
        return this.pt1;
    }

    public Point getPoint2() {
        return this.pt2;
    }

    public double perimetre() {
        return (2* Math.PI *this.rayon()) ;
    }


    public double surface() {
        return Math.PI * Math.pow(this.rayon(), 2);
    }
}
