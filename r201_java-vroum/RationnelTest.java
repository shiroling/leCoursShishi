import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class RationnelTest {

    @Test
    public void testConstructeur() {
        Rationnel r = new Rationnel(1, 2);
        assertEquals(1, r.getNum�rateur());
        assertEquals(2, r.getD�nominateur());
    }

    @Test(expected = IllegalArgumentException.class)
    public void testConstructeurNumerateurNegatif() {
        new Rationnel(-1, 10);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testConstructeurDenominateurNul() {
        new Rationnel(1, 0);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testConstructeurDenominateurNegatif() {
        new Rationnel(1, -10);
    }

    @Test
    public void testCalculPgcd() {
        assertEquals(3, Rationnel.pgcd(3, 3));
        assertEquals(3, Rationnel.pgcd(15, 3));
        assertEquals(3, Rationnel.pgcd(9, 3));
        assertEquals(3, Rationnel.pgcd(6, 3));
        assertEquals(3, Rationnel.pgcd(3, 15));
        assertEquals(5, Rationnel.pgcd(15, 10));
    }

    @Test
    public void testReduction() {
        Rationnel r = new Rationnel(15, 10).r�duction();
        assertEquals(3, r.getNum�rateur());
        assertEquals(2, r.getD�nominateur());
    }

    @Test
    public void testSomme() {
        Rationnel s = new Rationnel(3, 5).somme(new Rationnel(2, 10));
        assertEquals(40, s.getNum�rateur());
        assertEquals(50, s.getD�nominateur());
    }

    @Test
    public void testProduit() {
        Rationnel p = new Rationnel(3, 5).produit(new Rationnel(2, 10));
        assertEquals(6, p.getNum�rateur());
        assertEquals(50, p.getD�nominateur());
    }

    @Test
    public void testDivision() {
        Rationnel d = new Rationnel(3, 5).division(new Rationnel(2, 10));
        assertEquals(30, d.getNum�rateur());
        assertEquals(10, d.getD�nominateur());
    }

    @Test
    public void testToString() {
        assertEquals("3/5", new Rationnel(9, 15).toString());
    }

}
