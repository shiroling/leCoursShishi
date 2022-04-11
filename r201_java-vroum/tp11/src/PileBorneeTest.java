import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class PileBorneeTest {

    private PileBornee a;

    @Before
    public void setUp() throws Exception {
        a = new PileBornee(33);
    }

    @After
    public void tearDown() throws Exception {
        this.a = null;
    }

    @Test
    public void testPileBornee1() {
        assertTrue(a.isEmpty());
    }

    @Test
    public void testPileBornee2() {
        a.push(3);
        assertFalse(a.isEmpty());
    }

    @Test
    public void testPileBornee3() {
        assertEquals(33, a.getMaxSize());
    }

    @Test
    public void testPileBornee4() {
        a.push(3);
        assertEquals(33, a.getMaxSize());
    }

    @Test
    public void testPileBornee5() {
        assertEquals(0, a.getSize());
    }

    @Test
    public void testPileBornee61() {
        PileBornee b = new PileBornee(2);
        b.push(1);
        assertEquals(1, b.getSize());
    }

    @Test
    public void testPileBornee62() {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2);
        assertEquals(2, b.getSize());
    }

    @Test
    public void testPileBornee63() {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2); b.push(3);
        assertEquals(2, b.getSize());
    }

    @Test
    public void testPileBornee7() {
        PileBornee b = new PileBornee(2);
        assertFalse(b.isFull());
    }

    @Test
    public void testPileBornee81() {
        PileBornee b = new PileBornee(2);
        b.push(1);
        assertFalse(b.isFull());
    }

    @Test
    public void testPileBornee82() {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2);
        assertTrue(b.isFull());
    }

    @Test
    public void testPileBornee91() throws EmptyStackException {
        PileBornee b = new PileBornee(2);
        b.push(1);
        assertEquals(1, b.top());
    }

    @Test
    public void testPileBornee92() throws EmptyStackException {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2);
        assertEquals(2, b.top());
    }

    @Test
    public void testPileBornee93() throws EmptyStackException {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2); b.push(3);
        assertEquals(2, b.top());
    }

    @Test
    public void testPileBornee10() {
        PileBornee b = new PileBornee(2);
        b.pop();
        assertEquals(b.getMaxSize(), 2);
        assertEquals(b.getSize(), 0);
    }

    @Test
    public void testPileBornee111() {
        PileBornee b = new PileBornee(2);
        b.push(1);
        b.pop();
        assertTrue(b.isEmpty());
    }

    @Test
    public void testPileBornee112() throws EmptyStackException {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2);
        b.pop();
        assertEquals(b.top(), 1);
    }

    @Test (expected = EmptyStackException.class)
    public void excepTop() throws EmptyStackException{
        PileBornee b = new PileBornee(2);
        b.top();
    }

    @Test (expected = IllegalArgumentException.class )
    public void excepBuild1() throws IllegalArgumentException {
        PileBornee b = new PileBornee(-5);
    }

    @Test (expected = IllegalArgumentException.class )
    public void excepBuild2() throws IllegalArgumentException {
        PileBornee b = new PileBornee(0);
    }


}