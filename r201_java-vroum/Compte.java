public class Compte {
    /**
     * somme des valeurs ajout�es
     */
    private float cr�dit;
    /**
     * somme des valeurs retir�es
     */
    private float d�bit;

    /**
     * cr�e un compte vide
     */
    public Compte() {
        this.cr�dit = 0.0F;
        this.d�bit = 0.0F;
    }

    /**
     * cr�dite le compte
     * 
     * @param v
     *              valeur � cr�diter
     */
    public void d�poser(float v) {
        this.cr�dit += v;
    }

    /**
     * d�bite le compte
     * 
     * @param v
     *              valeur � d�biter
     */
    public void retirer(float v) {
        this.d�bit += v;
    }

    /**
     * calcule le solde
     * 
     * @return solde du compte
     */
    public float solde() {
        return this.cr�dit - this.d�bit;
    }

    /**
     * fournit une version unicode d'un compte
     * 
     * @return cha�ne contenant le num�ro concat�n� au cr�dit concat�n� au d�bit
     */
    @Override
    public String toString() {
        return "Cr�dit : " + this.cr�dit + ", D�bit : " + this.d�bit;
    }
}
