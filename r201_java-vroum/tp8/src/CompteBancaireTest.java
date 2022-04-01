import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class CompteBancaireTest {

	private CompteBancaire CB1;
	private CompteBancaire CB2;
	private CompteBancaire CB3;
	private CompteBancaire CB4;
	private CompteBancaire CB5;
	
	@Before
	public void Down() throws Exception {
		this.CB1 = new CompteBancaire("0123");
		this.CB2= new CompteBancaire("0125");
		this.CB3= new CompteBancaire("0123");
		this.CB4= new CompteBancaire("");
		this.CB5= new CompteBancaire("");
		
	}
	
	
	@After
	public void tearDown() throws Exception {
		this.CB1 = null;
		this.CB2 = null;
		this.CB3 = null;
		this.CB4 = null;
	}
	
	@Test
	public void SelfTest() {
		assertTrue(this.CB1.equals(this.CB1));
	}
	
   @Test
    public void CompTest() {
        assertFalse(this.CB1.equals(this.CB2));
    }

    @Test
    public void ComptNulle() {
        assertFalse(this.CB1.equals(null));
    }
    
//Comparaison compte bancaire de numéro null avec autre compte bancaire de numéro non null,
    @Test
    public void ComptNonNull_W_Null() {
    	assertFalse(this.CB1.equals(this.CB4));
    }
    
//comparaison de 2 comptes bancaires de numéros null
    @Test
    public void ComptNullNull() {
    	assertFalse(this.CB4.equals(this.CB5));
    }
}
















