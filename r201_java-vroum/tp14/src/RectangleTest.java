import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class RectangleTest {
    private Rectangle r;

    @Before
    public void setUp() throws Exception {
        this.r = new Rectangle(new Point(90, 90), new Point(450, 350));
    }

    @After
    public void tearDown() throws Exception {
        this.r = null;
    }

    @Test
    public void testGetPoint1() {
        assertEquals(new Point(90, 90), r.getPoint1());
    }

    @Test
    public void testGetPoint2() {
        assertEquals(new Point(450, 350), r.getPoint2());
    }

    @Test
    public void testLargeur() {
        assertEquals(Math.abs(450 - 90), r.largeur());
    }

    @Test
    public void testHauteur() {
        assertEquals(Math.abs(350 - 90), r.hauteur());
    }

    @Test
    public void testPerimetre() {
        assertEquals(2 * (Math.abs(450 - 90) + Math.abs(350 - 90)),
                r.perimetre(), 0);
    }

    @Test
    public void testSurface() {
        assertEquals(Math.abs(450 - 90) * Math.abs(350 - 90), r.surface(), 0);
    }

}
