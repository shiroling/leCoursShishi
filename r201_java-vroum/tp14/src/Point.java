public class Point {

    /**
     * abscisse du point
     */
    private int x;

    /**
     * ordonnée du point
     */
    private int y;

    /**
     * construit un point
     * 
     * @param x
     *            abscisse du point
     * @param y
     *            ordonnée du point
     */
    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    /**
     * renvoie l'abscisse d'un point
     * 
     * @return abscisse
     */
    public int getX() {
        return this.x;
    }

    /**
     * renvoie l'ordonnée d'un point
     * 
     * @return ordonnée
     */
    public int getY() {
        return this.y;
    }

    /**
     * calcule la distance entre 2 points situés sur une surface de dessin
     * 
     * @param p1
     *            premier point
     * @param p2
     *            deuxième point
     * @return distance entre p1 et p2
     */
    public static double distance(Point p1, Point p2) {
        return Math.sqrt(Math.pow(p2.getX() - p1.getX(), 2.0)
                + Math.pow(p2.getY() - p1.getY(), 2.0));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + this.x;
        result = prime * result + this.y;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        if (this.x == point.x && this.y == point.y) {
            return true;
        }
        return false;
    }

    /**
     * renvoie une version unicode d'un point
     * 
     * @return Point [x= + valX + , y=valY]
     */
    @Override
    public String toString() {
        return "Point [x=" + this.x + ", y=" + this.y + "]";
    }

}
