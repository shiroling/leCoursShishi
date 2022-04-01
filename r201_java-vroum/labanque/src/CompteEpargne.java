public class CompteEpargne extends CompteBancaire{

    private float M_taux;
    private float M_interets;

    public CompteEpargne(String num, float taux) {
        super(num);             // On apelle le constructeur de CompteBancaire manuellement, pour passer les args
        this.M_taux = taux;

    }


}
