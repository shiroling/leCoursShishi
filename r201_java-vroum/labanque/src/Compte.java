public abstract class Compte {

    private float M_credit;
    private float M_debit;

    public Compte() {
        this.M_credit = 0f;
        this.M_debit  = 0f;
    }

    public float solde() {
        return this.M_credit - this.M_debit;
    }

    public void crediter(float v) throws IllegalArgumentException {
        if (v <= 0) throw new IllegalArgumentException();

        this.M_credit = this.M_credit + v;
    }

    public void retirer(float v) throws IllegalArgumentException {
        if (v <= 0) throw new IllegalArgumentException();

        this.M_debit = this.M_debit + v;
    }

    @Override
    public String toString() {
        return "Crédit : " + this.M_credit + "Débits : " + this.M_debit ;
    }

}
