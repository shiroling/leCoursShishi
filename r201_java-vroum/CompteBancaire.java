public class CompteBancaire extends Compte {
    /**
     * num�ro du compte bancaire
     */
    private String num�ro;

    /**
     * cr�e un compte bancaire vide
     * 
     * @param num�ro
     *                   num�ro du compte bancaire
     */
    public CompteBancaire(String num�ro) {
        this.num�ro = num�ro;
    }

    /**
     * fournit le num�ro du compte bancaire
     * 
     * @return num�ro du compte bancaire
     */
    public String getNum�ro() {
        return this.num�ro;
    }

    /**
     * fournit une version unicode d'un compte bancaire
     * 
     * @return cha�ne contenant le num�ro concat�n� au cr�dit concat�n� au d�bit
     */
    @Override
    public String toString() {
        return "Num�ro : " + this.getNum�ro() + ", " + super.toString();
    }

}
