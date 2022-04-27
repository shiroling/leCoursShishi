package system;
import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class testScore {

    private Score s;

    @Before
    public void setUp() throws Exception {
        this.s = new Score(9);
    }

    @After
    public void tearDown() throws Exception {
        this.s = null;
    }

    @Test
    public void testOne() {
        this.s = new Score(9);
        this.s.one();
        assertEquals(this.s.getScore(), 10);
    }

    @Test
    public void testTwo() {
        this.s = new Score(9);
        this.s.two();
        assertEquals(this.s.getScore(), 11);
    }

    @Test
    public void testThree() {
        this.s = new Score(9);
        this.s.three();
        assertEquals(this.s.getScore(), 12);
    }
}