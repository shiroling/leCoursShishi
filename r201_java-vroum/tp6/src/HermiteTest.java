import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class HermiteTest {
    //attributs
    private Polynome[] h;

    @Before
    public void setUp() throws Exception {
        this.h = new Polynome[10];
        this.h[0] = new Polynome();
        this.h[0].setMonome(new Monome(1, 0));
        this.h[1] = new Polynome();
        this.h[1].setMonome(new Monome(1, 1));
        Monome m1 = new Monome(1.0F, 1);
        for (int i = 2; i < 10; i++) {
            Monome m2 = new Monome(-i + 1, 0);
            Polynome terme1 = this.h[i - 1].produit(m1);
            Polynome terme2 = this.h[i - 2].produit(m2);
            this.h[i] = terme1.somme(terme2);
        }
    }

    @After
    public void tearDown() throws Exception {
        this.h = null;
    }

    @Test
    public void P1() {
        for(int i = 1; i<10 ;i++) {
            Monome n = new Monome(i, 0);
            assertEquals(this.h[i].derivee().toString(),this.h[i-1].produit(n).toString());
        }
    }
//     𝐻′′𝑛(𝑥) − 𝑥𝐻′𝑛(𝑥) + 𝑛𝐻𝑛(𝑥) =  0
    @Test
    public void P2() {
        for (int i = 1; i <10; i++) {
            Monome n = new Monome(i, 0);
            Monome nega = new Monome(-1, 0)
            Polynome mb1 = this.h[i].derivee().derivee();
            Polynome mb2 = this.h[i].derivee().produit(n).produit(nega);
            Polynome mb3 = this.h[i].produit(n);
            assertEquals("0.0", );
        }
    }
}