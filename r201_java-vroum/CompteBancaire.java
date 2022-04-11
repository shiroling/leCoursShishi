public class CompteBancaire extends Compte {
    /**
     * numéro du compte bancaire
     */
    private String numéro;

    /**
     * crée un compte bancaire vide
     * 
     * @param numéro
     *                   numéro du compte bancaire
     */
    public CompteBancaire(String numéro) {
        this.numéro = numéro;
    }

    /**
     * fournit le numéro du compte bancaire
     * 
     * @return numéro du compte bancaire
     */
    public String getNuméro() {
        return this.numéro;
    }

    /**
     * fournit une version unicode d'un compte bancaire
     * 
     * @return chaîne contenant le numéro concaténé au crédit concaténé au débit
     */
    @Override
    public String toString() {
        return "Numéro : " + this.getNuméro() + ", " + super.toString();
    }

}
