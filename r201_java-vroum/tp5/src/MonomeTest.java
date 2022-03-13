import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MonomeTest {

    private Monome m;
    private Monome nul;

    @Before
    public void setUp() throws Exception {
        this.m = new Monome(1.0F, 2);
        this.nul = new Monome(0.0F, 0);
    }

    @After
    public void tearDown() throws Exception {
        this.m = null;
        this.nul = null;
    }

    @Test
    public void testConstructeurCoefficient() {
        assertEquals(1.0F, this.m.getCoefficient(), 0.0F);
    }

    @Test
    public void testConstructeurExposant() {
        assertEquals(2, this.m.getExposant());
    }

    @Test
    public void testEstNulMonomeNul() {
        assertTrue(this.nul.estNul());
    }

    @Test
    public void testEstNulMonomeNonNul() {
        assertTrue(!this.m.estNul());
    }

    @Test
    public void testSommeMonomes() {
        Monome somme = this.m.somme(new Monome(1.1F, 2));
        assertEquals(this.m.getCoefficient() + 1.1F, somme.getCoefficient(),
                0.0F);
        assertEquals(this.m.getExposant(), somme.getExposant());
    }

    @Test
    public void testProduitMonomes() {
        Monome produit = this.m.produit(new Monome(1.1F, 2));
        assertEquals(this.m.getCoefficient() * 1.1F, produit.getCoefficient(),
                0.0F);
        assertEquals(this.m.getExposant() + 2, produit.getExposant());
    }

    @Test
    public void testDeriveeMonomeNul() {
        assertTrue(this.nul.derivee().estNul());
    }

    @Test
    public void testDeriveeMonomeNonNul() {
        Monome derivee= this.m.derivee();
        assertEquals(this.m.getCoefficient() * this.m.getExposant(),
                derivee.getCoefficient(), 0.0F);
        assertEquals(this.m.getExposant() - 1, derivee.getExposant());
    }

    @Test(expected = IllegalArgumentException.class)
    public void testConstructeurExposantNegatif() {
        new Monome(0.0F, -1);
    }

    @Test(expected = ArithmeticException.class)
    public void testSomme2MonomesExposantsDifferents() {
        this.m.somme(new Monome(1.0F, 3));
    }

}
