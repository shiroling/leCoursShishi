public class PointColor� extends Point {
	private Couleur couleur;
	
	public static final PointColor� POINT_ORIGINE = new PointColor�(0.0F, 0.0F, 0 , 0, 0);
	
	public PointColor�(float abscisse, float ordonn�e, int rouge, int vert, int bleu) throws IllegalArgumentException {
		super(abscisse, ordonn�e);
		this.couleur = new Couleur(rouge,vert,bleu);
	}
	
	public int getNuanceRouge() {
		return this.couleur.getRouge();
	}
	
	public int getNuanceVert() {
		return this.couleur.getVert();
	}
	
	public int getNuanceBleu() {
		return this.couleur.getBleu();
	}
	
	public void setNuanceRouge(int rouge) throws IllegalArgumentException {
		this.couleur.setRouge(rouge);
	}
	
	public void setNuanceVert(int vert) throws IllegalArgumentException {
		this.couleur.setVert(vert);
	}
	
	public void setNuanceBleu(int bleu) throws IllegalArgumentException  {
		this.couleur.setBleu(bleu);
	}
}
