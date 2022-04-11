public class Compte {
    /**
     * somme des valeurs ajoutées
     */
    private float crédit;
    /**
     * somme des valeurs retirées
     */
    private float débit;

    /**
     * crée un compte vide
     */
    public Compte() {
        this.crédit = 0.0F;
        this.débit = 0.0F;
    }

    /**
     * crédite le compte
     * 
     * @param v
     *              valeur à créditer
     */
    public void déposer(float v) {
        this.crédit += v;
    }

    /**
     * débite le compte
     * 
     * @param v
     *              valeur à débiter
     */
    public void retirer(float v) {
        this.débit += v;
    }

    /**
     * calcule le solde
     * 
     * @return solde du compte
     */
    public float solde() {
        return this.crédit - this.débit;
    }

    /**
     * fournit une version unicode d'un compte
     * 
     * @return chaîne contenant le numéro concaténé au crédit concaténé au débit
     */
    @Override
    public String toString() {
        return "Crédit : " + this.crédit + ", Débit : " + this.débit;
    }
}
