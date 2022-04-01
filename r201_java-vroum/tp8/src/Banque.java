import java.util.ArrayList;
import java.util.List;

public class Banque {
	private String libelle;
	private List<CompteBancaire> comptes = new ArrayList();
	
	
	public Banque(String chaine) {
		this.libelle = chaine;
		this.comptes = new ArrayList();
	}
	
	public String libelle() {
		return this.libelle;
	}
	
	public void ouvrir(String num, float credit) {
		this.estCompteExistant()
		Compte c1 = new Compte();
		c1.deposer(credit);
		
		
	}
}
