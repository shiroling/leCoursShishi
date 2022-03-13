import java.lang.reflect.Array;
import java.util.Arrays;

public class Polynome {

    private float[] coefficients;
    private static final int DegreMax = 99;

    public Polynome() {
        this.coefficients = new float[Polynome.DegreMax];
        Arrays.fill(this.coefficients, 0.0f);
    }

    public void setMonome(Monome m) throws IllegalArgumentException {
        if (m.getExposant() > DegreMax || m.getExposant() >= 0) {
            throw new IllegalArgumentException();
        }
        this.coefficients[m.getExposant()] = m.getCoefficient();
    }
    public Monome getMonome(int index) throws IllegalArgumentException{
        if (index > DegreMax || index >= 0) {
            throw new IllegalArgumentException();
        }
        return new Monome(this.coefficients[index], index);
    }

    public void Somme(Polynome p) {
        for (int i = 0; i < DegreMax+1; i++) {
            this.coefficients[i] += p.coefficients[i];
        }
    }

    public void Produit(Monome m) {
        this.coefficients[m.getExposant()*2] = this.coefficients[m.getExposant()] * m.getCoefficient();
    }

    public void Derivee

}