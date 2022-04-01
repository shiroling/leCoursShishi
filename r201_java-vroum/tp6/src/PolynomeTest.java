import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class PolynomeTest {

    @Test
    public void testToStringPolynomeNul() {
        Polynome nul = new Polynome();
        assertEquals("0", nul.toString());
    }

    @Test
    public void testToStringPolynomeCoefficientsPositifs() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(8F, 4));
        p.setMonome(new Monome(8F, 2));
        p.setMonome(new Monome(1F, 0));
        assertEquals("8.0xe4 + 8.0xe2 + 1.0", p.toString());
    }

    @Test
    public void testToStringPolynomeCoefficientsPositifsEtNegatifs() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(128F, 8));
        p.setMonome(new Monome(160F, 4));
        p.setMonome(new Monome(-32F, 2));
        p.setMonome(new Monome(1F, 0));
        assertEquals("128.0xe8 + 160.0xe4 - 32.0xe2 + 1.0", p.toString());
    }

    @Test
    public void testToStringPolynomePremierCoefficientNegatif() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(-128F, 8));
        p.setMonome(new Monome(160F, 4));
        p.setMonome(new Monome(-32F, 2));
        p.setMonome(new Monome(1F, 0));
        assertEquals("-128.0xe8 + 160.0xe4 - 32.0xe2 + 1.0", p.toString());
    }

    @Test
    public void testGetMonome() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(6F, 1));
        assertTrue(p.getMonome(3).estNul());
        assertEquals(1, p.getMonome(1).getExposant());
        assertEquals(6F, p.getMonome(1).getCoefficient(), 0F);
    }

    @Test
    public void testDerivePolynome() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(2F, 2));
        p.setMonome(new Monome(6F, 1));
        p.setMonome(new Monome(32F, 0));
        assertEquals("4.0x + 6.0", p.derivee().toString());
    }

    @Test
    public void testSommePolynomes() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(-128F, 8));
        p.setMonome(new Monome(160F, 4));
        p.setMonome(new Monome(-32F, 2));
        p.setMonome(new Monome(1F, 0));
        Polynome other = new Polynome();
        other.setMonome(new Monome(128F, 8));
        other.setMonome(new Monome(6F, 4));
        other.setMonome(new Monome(33F, 3));
        assertEquals("166.0xe4 + 33.0xe3 - 32.0xe2 + 1.0",
                p.somme(other).toString());
    }

    @Test
    public void testProduitPolynomeParMonome() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(128F, 8));
        p.setMonome(new Monome(160F, 4));
        p.setMonome(new Monome(-32F, 2));
        p.setMonome(new Monome(1F, 0));
        Monome m = new Monome(2F, 1);
        assertEquals("256.0xe9 + 320.0xe5 - 64.0xe3 + 2.0x",
                p.produit(m).toString());
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetMonomeExposantNegatif() {
        Polynome p = new Polynome();
        p.getMonome(-8);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testGetMonomeExposantSuperieurDegreMax() {
        Polynome p = new Polynome();
        p.getMonome(1000);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testSetMonomeExposantSuperieurDegreMax() {
        Polynome p = new Polynome();
        p.setMonome(new Monome(128F, 2000));
    }

    @Test(expected = IllegalArgumentException.class)
    public void testProduitExposantSuperieurDegreMax() {
        Polynome p = new Polynome();
        Monome m = new Monome(5, 6);
        p.setMonome(new Monome(10, 98));
        p.produit(m);
    }

}
