import static org.junit.Assert.*;


import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class PileBorneeTest {
    private PileBornee a;
    @Before
    public void setUp() throws Exception {
        this.a = new PileBornee(33);
    }

    @After
    public void tearDown() throws Exception {
        this.a = null;
    }
  
    @Test
    public void test1() {
        assertTrue(a.isEmpty());
    }
    @Test
    public void test2() throws FullStackException {
    	a.push(3);
        assertFalse(a.isEmpty());
    }
    @Test
    public void test3() {
        assertEquals(a.getMaxSize(),33);
    }
    @Test
    public void test4() throws FullStackException {
    	a.push(3);
        assertEquals(a.getMaxSize(),33);
    }
    @Test
    public void test5() {
        assertEquals(a.getSize(),0);
    }
    @Test
    public void test61() throws FullStackException {
        PileBornee b = new PileBornee(2);
        b.push(1);
        assertEquals(b.getSize(), 1);
    }

    public void test62() throws FullStackException {
        PileBornee b = new PileBornee(2);
        b.push(1); b.push(2);
        assertEquals(b.getSize(), 2);
    }

    @Test(expected = FullStackException.class)
    public void test63() throws FullStackException {
        PileBornee b = new PileBornee(1);
        b.push(1); b.push(2); b.push(3);
    }

    @Test
    public void test7() {

        assertEquals(a.getSize(),0);
    }
    
    @Test
    public void test8() throws FullStackException {
    	PileBornee b = new PileBornee(2); 
    	b.push(1);
        assertFalse(b.isEmpty());
    	b.push(1);
        assertEquals(b.getMaxSize(),2); 
    }

    @Test
    public void test9() throws EmptyStackException, FullStackException {
    	PileBornee b = new PileBornee(3); 
    	b.push(1);
    	assertEquals(b.top(),1); 
    	b.push(2);
    	assertEquals(b.top(),2);
    	b.push(3);
    	assertEquals(b.top(),3); 
    }
    
    @Test
    public void test10() throws EmptyStackException, FullStackException {
    	PileBornee b = new PileBornee(2);
    	b.push(0);
    	b.pop();
    	assertEquals(b.getMaxSize(),2);
    	assertEquals(b.getSize(),0);
    }
    @Test
    public void test11() throws EmptyStackException, FullStackException {
    	PileBornee b = new PileBornee(2);
    	b.push(1);
    	b.pop();
    	assertEquals(b.getSize(),0);
    }
    
    @Test(expected = EmptyStackException.class)
    public void testPOP() throws EmptyStackException {
    	PileBornee b = new PileBornee(2);
    	b.top();
    }
    @Test(expected = IllegalArgumentException.class)
    public void testPile() throws IllegalArgumentException {
    	PileBornee b = new PileBornee(0);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testPile2() throws IllegalArgumentException {
    	PileBornee b = new PileBornee(-5);
    }

    @Test(expected = FullStackException.class)
    public void testPilesize() throws FullStackException {
    	PileBornee b = new PileBornee(1);
    	b.push(1);
    	b.push(2);
    }
}