public class Monome {

    private final float coefficient;
    private final int exposant;

    /**
     * Créée un monôme LOL
     * @param coefficient non
     * @param exposant oui
     * @throws IllegalArgumentException fleme
     */
    public Monome(float coefficient, int exposant)
            throws IllegalArgumentException {
        if (exposant < 0) {
            throw new IllegalArgumentException("exposant negatif");
        }
        this.coefficient = coefficient;
        this.exposant = exposant;
    }

    public String toString() {
        String resultat = "";
        if (this.estNul()) {
            return "0.0";
        }

        if (this.coefficient > 0) {
            resultat += " + ";
        } else {
            resultat += " - ";
        }
        if (this.coefficient != 1) {
            resultat += this.coefficient;
        }
        if (this.exposant == 0) {
            return resultat;
        }
        if (this.exposant == 1) {
            resultat += "x";
            return resultat;
        }
        resultat += "xe" + this.exposant;
        return resultat;
    }


    public float getCoefficient() {
        return this.coefficient;
    }

    public int getExposant() {
        return this.exposant;
    }

    public Monome somme(Monome m) throws ArithmeticException {
        if (this.getExposant() != m.getExposant()) {
            throw new ArithmeticException("coefficient des deux monomes differents");
        }
        return new Monome(this.getCoefficient() + m.getCoefficient(),
                this.getExposant());
    }

    public Monome produit(Monome m) {
        return new Monome(this.getCoefficient() * m.getCoefficient(),
                this.getExposant() + m.getExposant());
    }

    public Monome derivee() {
        if (this.getExposant() == 0) {
            return new Monome(0, 0);
        } else {
            return new Monome(this.getCoefficient() * this.getExposant(),
                    this.getExposant() - 1);
        }
    }

    public boolean estNul() {
        return this.getCoefficient() == 0;
    }

}
