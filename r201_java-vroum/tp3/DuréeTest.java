import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class DuréeTest {

    @Test
    public void testGetters() {
        Durée d = new Durée(1, 2, 3);
        assertEquals(1, d.getHeures());
        assertEquals(2, d.getMinutes());
        assertEquals(3, d.getSecondes());
    }

    @Test(expected = IllegalArgumentException.class)
    public void testHeuresNegative() {
        new Durée(-1, 2, 3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testMinutesNegative() {
        new Durée(1, -2, 3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testMinutesSuperieur59() {
        new Durée(1, 60, 3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testSecondesNegative() {
        new Durée(1, 2, -3);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testSecondesSuperieur59() {
        new Durée(1, 2, 60);
    }

    @Test
    public void testEgal() {
        assertTrue(new Durée(1, 2, 3).égal(new Durée(1, 2, 3)));
    }

    @Test
    public void testNonEgal() {
        assertFalse(new Durée(1, 2, 3).égal(new Durée(2, 2, 3)));
        assertFalse(new Durée(1, 2, 3).égal(new Durée(1, 1, 3)));
        assertFalse(new Durée(1, 2, 3).égal(new Durée(1, 2, 2)));
    }

    @Test
    public void testAjouterUneSeconde() {
        Durée d123 = new Durée(1, 2, 3);
        d123.ajouterUneSeconde();
        assertTrue(new Durée(1, 2, 4).égal(d123));
        Durée d1259 = new Durée(1, 2, 59);
        d1259.ajouterUneSeconde();
        assertTrue(new Durée(1, 3, 0).égal(d1259));
        Durée d5959 = new Durée(1, 59, 59);
        d5959.ajouterUneSeconde();
        assertTrue(new Durée(2, 0, 0).égal(d5959));
    }

    @Test
    public void testInf() {
        assertTrue(new Durée(1, 2, 3).inf(new Durée(2, 2, 3)));
        assertTrue(new Durée(1, 2, 3).inf(new Durée(1, 3, 3)));
        assertTrue(new Durée(1, 2, 3).inf(new Durée(1, 2, 4)));
    }

    @Test
    public void testNonInf() {
        assertFalse(new Durée(1, 2, 3).inf(new Durée(1, 2, 3)));
        assertFalse(new Durée(2, 2, 3).inf(new Durée(1, 2, 3)));
        assertFalse(new Durée(1, 3, 3).inf(new Durée(1, 2, 3)));
        assertFalse(new Durée(1, 2, 4).inf(new Durée(1, 2, 3)));
    }

    @Test
    public void testToString() {
        assertEquals("1:2:3", new Durée(1, 2, 3).toString());
    }
}
