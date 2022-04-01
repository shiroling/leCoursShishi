import java.util.Arrays;

public class Polynome {

    /**
     * degré maximum du polynôme
     */
    public static final int DEGRE_MAX = 99;
    /**
     * tableau contenant les coefficients des monômes du polynôme
     */
    private final float[] coefficients;

    /**
     * crée un polynôme nul
     */
    public Polynome() {
        // créer le tableau des coefficients
        this.coefficients = new float[Polynome.DEGRE_MAX + 1];
        // mettre à 0 tous les coefficients
        Arrays.fill(this.coefficients, 0.0F);
    }

    /**
     * positionne un nouveau monôme dans un polynôme
     *
     * @param m monôme à positionner dans le polynôme
     * @throws IllegalArgumentException si l'exposant du monôme est supérieur à
     *                                  DEGRE_MAX
     */
    public void setMonome(Monome m) throws IllegalArgumentException {
        if (m.getExposant() > Polynome.DEGRE_MAX) {
            throw new IllegalArgumentException("exposant du monome trop grand "
                    + m.getExposant() + " " + m);
        }
        this.coefficients[m.getExposant()] = m.getCoefficient();
    }

    /**
     * accède à un monôme du polynôme
     *
     * @param exposant exposant du monôme à accéder
     * @throws IllegalArgumentException si l'exposant du monôme n'est pas
     *                                  compris dans [0,DEGRE_MAX]
     */
    public Monome getMonome(int exposant) throws IllegalArgumentException {
        if (exposant < 0 || exposant > Polynome.DEGRE_MAX) {
            throw new IllegalArgumentException("exposant invalide " + exposant);
        }
        return new Monome(this.coefficients[exposant], exposant);
    }

    /**
     * calcule la dérivée d'un polynôme
     *
     * @return dérivée du polynôme
     */
    public Polynome derivee() {
        Polynome resultat = new Polynome();
        for (int i = 0; i< Polynome.DEGRE_MAX; i++){
            Monome m = this.getMonome(i).derivee();
            resultat.setMonome(m);
        }
        return resultat;
    }

    /**
     * calcule la somme de deux polynômes
     *
     * @param p deuxième polynôme associé à la somme
     * @return polynôme résultat
     */
    public Polynome somme(Polynome p) {        Polynome resultat = new Polynome();
        for (int i = 0; i< Polynome.DEGRE_MAX; i++){
            Monome m = this.getMonome(i).somme(p.getMonome(i));
            resultat.setMonome(m);
        }
        return resultat;

    }

    /**
     * calcule le produit d'un polynôme et d'un monôme
     *
     * @param m monôme associé au produit
     *
     * @throws IllegalArgumentException si l'exposant d'un monôme du résultat
     *                                  est supérieur à DEGRE_MAX
     * @return polynôme produit
     */
    public Polynome produit(Monome m) throws IllegalArgumentException {
        Polynome resultat = new Polynome();
        for (int i = 0; i< Polynome.DEGRE_MAX; i++){
            if (!this.getMonome(i).estNul()) {
                Monome in = this.getMonome(i).produit(m);
                resultat.setMonome(in);
            }
        }
        return resultat;
    }

    @Override
    public String toString() {
        StringBuilder resultat = new StringBuilder();
        for (int i = this.coefficients.length - 2; i >= 0; i--) {
            if (!this.getMonome(i).estNul()) {
                resultat.append(this.getMonome(i));
            }
        }
        if (resultat.toString().equals("")) {
            return "0";
        }
        if (resultat.charAt(1) == '-') {
            return "-" + resultat.substring(3, resultat.length());
        }
        return resultat.substring(3, resultat.length());
    }

}