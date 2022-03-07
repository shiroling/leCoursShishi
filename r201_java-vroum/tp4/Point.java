public class Point {
	
	private float abscisse;
	private float ordonnee;
	public static final Point POINT_ORIGINE = new Point(0.0F, 0.0F);
	
	public Point(float abscisse, float ordonnee) {
		this.abscisse = abscisse;
		this.ordonnee = ordonnee;
	}
	
	public float getAbscisse() {
		return this.abscisse;
	}
	
	public float getordonnee() {
		return this.ordonnee;
	}
	
	public void translater(float tx, float ty) {
		this.abscisse += tx;
		this.ordonnee += ty;
	}
	
	public void mettreAEchelle(float h) throws IllegalArgumentException {
		if (h <= 0.0F)
			throw new IllegalArgumentException("facteur erron�" + h);
		this.abscisse *= h;
		this.ordonnee *= h;
	}
}
