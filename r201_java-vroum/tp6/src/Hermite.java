
public class Hermite {
    public static void main(String[] args) {
        System.out.println("Les 10 premiers polynomes d'Hermite : ");
        Polynome[] hermite = new Polynome[10];
        hermite[0] = new Polynome();
        hermite[0].setMonome(new Monome(1, 0));
        hermite[1] = new Polynome();
        hermite[1].setMonome(new Monome(1, 1));
        Monome m1 = new Monome(1.0F, 1);
        for (int i = 2; i < 10; i++) {
            Monome m2 = new Monome(-i + 1, 0);
            Polynome terme1 = hermite[i - 1].produit(m1);
            Polynome terme2 = hermite[i - 2].produit(m2);
            hermite[i] = terme1.somme(terme2);
        }
        for (int i = 0; i < 10; i++) {
            System.out.println("H" + i + "(x) = " + hermite[i]);
        }
    }
}
