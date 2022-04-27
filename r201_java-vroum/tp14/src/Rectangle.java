public class Rectangle extends FigureFermee{

    public Rectangle(Point pt1, Point pt2) {
        super(pt1, pt2);
    }

    public int largeur() { return Math.abs(getPoint1().getX()-getPoint2().getX());
    }

    public int hauteur() {
        return Math.abs(getPoint1().getY()-getPoint2().getY());
    }

    public int perimetre() { return 2*(this.hauteur() + this.largeur()); }

    public float surface() {
        return this.hauteur()*this.largeur();
    }



}
