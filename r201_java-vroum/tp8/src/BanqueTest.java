import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class BanqueTest {
    private Banque b;

    @Before
    public void setUp() throws Exception {
        this.b = new Banque("toto");
        this.b.ouvrir("c1", 0);
        this.b.ouvrir("c2", 100);
        this.b.ouvrir("c3", 10);
    }

    @After
    public void tearDown() throws Exception {
        this.b = null;
    }

    @Test(expected = IllegalArgumentException.class)
    public void testOuvrirCompteExistant() {
        this.b.ouvrir("c1", 150);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testOuvrirValeurNegative() {
        this.b.ouvrir("c4", -1);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFermerCompteInexistant() {
        this.b.fermer("c4");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFermerSoldeNonNul() {
        this.b.fermer("c3");
    }

    @Test(expected = IllegalArgumentException.class)
    public void testDeposerCompteInexistant() {
        this.b.deposer("c4", 10);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testDeposerValeurNegative() {
        this.b.deposer("c1", -3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testRetirerCompteInexistant() {
        this.b.deposer("c4", 10);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testRetirerValeurNegative() {
        this.b.deposer("c1", -3);
    }

    @Test
    public void testLibelle() {
        assertEquals(this.b.getLibelle(), "toto");
    }

    @Test
    public void testToString() {
        assertEquals(
                "[Banque : toto\n" + "Numero : c1, Credit : 0.0, Debit : 0.0\n"
                        + "Numero : c2, Credit : 100.0, Debit : 0.0\n"
                        + "Numero : c3, Credit : 10.0, Debit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testBanqueVideCreation() {
        Banque b2 = new Banque("titi");
        assertEquals("[Banque : titi]", b2.toString());
    }

    @Test
    public void testOuvrir() {
        this.b.ouvrir("c4", 20);
        assertEquals(
                "[Banque : toto\n" + "Numero : c1, Credit : 0.0, Debit : 0.0\n"
                        + "Numero : c2, Credit : 100.0, Debit : 0.0\n"
                        + "Numero : c3, Credit : 10.0, Debit : 0.0\n"
                        + "Numero : c4, Credit : 20.0, Debit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testFermer() {
        this.b.fermer("c1");
        assertEquals(
                "[Banque : toto\n"
                        + "Numero : c2, Credit : 100.0, Debit : 0.0\n"
                        + "Numero : c3, Credit : 10.0, Debit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testDeposer() {
        this.b.deposer("c2", 50);
        assertEquals(
                "[Banque : toto\n" + "Numero : c1, Credit : 0.0, Debit : 0.0\n"
                        + "Numero : c2, Credit : 150.0, Debit : 0.0\n"
                        + "Numero : c3, Credit : 10.0, Debit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testRetirer() {
        this.b.retirer("c2", 150);
        assertEquals(
                "[Banque : toto\n" + "Numero : c1, Credit : 0.0, Debit : 0.0\n"
                        + "Numero : c2, Credit : 100.0, Debit : 150.0\n"
                        + "Numero : c3, Credit : 10.0, Debit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testCompteExistant() {
        assertTrue(b.estCompteExistant("c1"));
    }

    @Test
    public void testCompteInexistant() {
        assertFalse(b.estCompteExistant("c4"));
    }

    @Test
    public void testGetCompteInexistant() {
        assertNull(b.getCompte("c4"));
    }

    @Test
    public void testGetCompteExistant() {
        CompteBancaire c = b.getCompte("c2");
        assertEquals("Numero : c2, Credit : 100.0, Debit : 0.0", c.toString());
    }

    @Test
    public void testSolde() {
        this.b.retirer("c2", 150);
        assertEquals(-40.0, this.b.solde(), 0.0F);
    }

}
