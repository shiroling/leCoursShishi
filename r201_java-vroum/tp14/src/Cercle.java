public class Cercle extends FigureFermee{

    public Cercle(Point pt1, Point pt2) {
        super(pt1, pt2);
    }

    public double rayon() {
        return Point.distance(this.getPoint1(), this.getPoint2());
    }

    public double diametre() {
        return 2*rayon();
    }

    public double perimetre() {
        return (2* Math.PI *this.rayon()) ;
    }

    public double surface() {
        return Math.PI * Math.pow(this.rayon(), 2);
    }
}
