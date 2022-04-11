public class Compte {
    /**
     * somme des valeurs ajoutees
     */
    private float credit;
    /**
     * somme des valeurs retirees
     */
    private float debit;

    /**
     * cree un compte vide
     */
    public Compte() {
        this.credit = 0.0F;
        this.debit = 0.0F;
    }

    /**
     * credite le compte
     * 
     * @param v
     *              valeur e crediter
     */
    public void deposer(float v) {
        this.credit += v;
    }

    /**
     * debite le compte
     * 
     * @param v
     *              valeur e debiter
     */
    public void retirer(float v) {
        this.debit += v;
    }

    /**
     * calcule le solde
     * 
     * @return solde du compte
     */
    public float solde() {
        return this.credit - this.debit;
    }

    /**
     * fournit une version unicode d'un compte
     * 
     * @return chaene contenant le numero concatene au credit concatene au debit
     */
    @Override
    public String toString() {
        return "Credit : " + this.credit + ", Debit : " + this.debit;
    }
}
