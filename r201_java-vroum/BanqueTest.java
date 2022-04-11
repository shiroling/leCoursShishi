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
    public void testOuvrirValeurNégative() {
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
    public void testDéposerCompteInexistant() {
        this.b.déposer("c4", 10);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testDéposerValeurNégative() {
        this.b.déposer("c1", -3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testRetirerCompteInexistant() {
        this.b.déposer("c4", 10);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testRetirerValeurNégative() {
        this.b.déposer("c1", -3);
    }

    @Test
    public void testLibellé() {
        assertEquals(this.b.getLibellé(), "toto");
    }

    @Test
    public void testToString() {
        assertEquals(
                "[Banque : toto\n" + "Numéro : c1, Crédit : 0.0, Débit : 0.0\n"
                        + "Numéro : c2, Crédit : 100.0, Débit : 0.0\n"
                        + "Numéro : c3, Crédit : 10.0, Débit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testBanqueVideCréation() {
        Banque b2 = new Banque("titi");
        assertEquals("[Banque : titi]", b2.toString());
    }

    @Test
    public void testOuvrir() {
        this.b.ouvrir("c4", 20);
        assertEquals(
                "[Banque : toto\n" + "Numéro : c1, Crédit : 0.0, Débit : 0.0\n"
                        + "Numéro : c2, Crédit : 100.0, Débit : 0.0\n"
                        + "Numéro : c3, Crédit : 10.0, Débit : 0.0\n"
                        + "Numéro : c4, Crédit : 20.0, Débit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testFermer() {
        this.b.fermer("c1");
        assertEquals(
                "[Banque : toto\n"
                        + "Numéro : c2, Crédit : 100.0, Débit : 0.0\n"
                        + "Numéro : c3, Crédit : 10.0, Débit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testDéposer() {
        this.b.déposer("c2", 50);
        assertEquals(
                "[Banque : toto\n" + "Numéro : c1, Crédit : 0.0, Débit : 0.0\n"
                        + "Numéro : c2, Crédit : 150.0, Débit : 0.0\n"
                        + "Numéro : c3, Crédit : 10.0, Débit : 0.0]",
                this.b.toString());
    }

    @Test
    public void testRetirer() {
        this.b.retirer("c2", 150);
        assertEquals(
                "[Banque : toto\n" + "Numéro : c1, Crédit : 0.0, Débit : 0.0\n"
                        + "Numéro : c2, Crédit : 100.0, Débit : 150.0\n"
                        + "Numéro : c3, Crédit : 10.0, Débit : 0.0]",
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
        assertEquals("Numéro : c2, Crédit : 100.0, Débit : 0.0", c.toString());
    }

    @Test
    public void testSolde() {
        this.b.retirer("c2", 150);
        assertEquals(-40.0, this.b.solde(), 0.0F);
    }

}
