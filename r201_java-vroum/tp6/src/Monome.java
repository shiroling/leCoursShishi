public class Monome {

    /**
     * coefficient du mon�me
     */
    private float coefficient;

    /**
     * exposant du mon�me
     */
    private int exposant;

    /**
     * construit un mon�me
     * 
     * @param coefficient
     *            coefficient du mon�me
     * @param exposant
     *            exposant du mon�me
     * @exception IllegalArgumentException
     *                si l'exposant est n�gatif
     */
    public Monome(float coefficient, int exposant)
            throws IllegalArgumentException {
        if (exposant < 0) {
            throw new IllegalArgumentException("exposant n�gatif");
        }
        this.coefficient = coefficient;
        this.exposant = exposant;
    }

    /**
     * retourne le coefficient d'un mon�me
     * 
     * @return coefficient
     */
    public float getCoefficient() {
        return this.coefficient;
    }

    /**
     * retourne l'exposant d'un mon�me
     * 
     * @return exposant
     */
    public int getExposant() {
        return this.exposant;
    }

    /**
     * calcule la somme de deux mon�mes
     * 
     * @param m
     *            deuxi�me op�rande de la somme
     * @return mon�me r�sultat
     * @exception ArithmeticException
     *                si les exposants des 2 mon�mes ne sont pas les m�mes
     */
    public Monome somme(Monome m) throws ArithmeticException {
        if (this.getExposant() != m.getExposant()) {
            throw new ArithmeticException(
                    "coefficient des deux mon�mes diff�rents");
        }
        return new Monome(this.getCoefficient() + m.getCoefficient(),
                this.getExposant());
    }

    /**
     * calcule le produit de deux mon�mes
     * 
     * @param m
     *            deuxi�me op�rande du produit
     * @return mon�me r�sultat
     */
    public Monome produit(Monome m) {
        return new Monome(this.getCoefficient() * m.getCoefficient(),
                this.getExposant() + m.getExposant());
    }

    /**
     * calcule la d�riv�e d'un mon�me
     * 
     * @return mon�me r�sultat
     */
    public Monome derivee() {
        if (this.getExposant() == 0) {
            return new Monome(0.0F, 0);
        } else {
            return new Monome(this.getCoefficient() * this.getExposant(),
                    this.getExposant() - 1);
        }
    }

    /**
     * produit une version unicode d'un mon�me
     * 
     * @return cha�ne r�sultat
     */
    @Override
    public String toString() {
        if (this.estNul()) {
            return "0";
        }
        String resultat = "";
        if (this.getCoefficient() < 0.0F) {
            resultat += " - ";
            if ((this.getCoefficient() != -1.0F)
                    || (this.getCoefficient() == -1.0F
                            && this.getExposant() == 0)) {
                resultat += (-this.getCoefficient());
            }
        } else {
            resultat += " + ";
            if ((this.getCoefficient() != 1.0F)
                    || (this.getCoefficient() == 1.0F
                            && this.getExposant() == 0)) {
                resultat += this.getCoefficient();
            }
        }
        if (this.getExposant() == 0) {
            return resultat;
        }
        resultat += "x";
        if (this.getExposant() != 1) {
            resultat += "e" + this.getExposant();
        }
        return resultat;
    }

    /**
     * teste si un mon�me est nul
     * 
     * @return true si le mon�me est nul
     */
    public boolean estNul() {
        return this.getCoefficient() == 0;
    }

}
