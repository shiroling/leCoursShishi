import java.util.Objects;

public class CompteBancaire extends Compte {

    private final String M_numero;

    public CompteBancaire(String num) {
        this.M_numero = num;
    }

    public String numero() {
        return this.M_numero;
    }

    @Override
    public String toString() {
        return "Numéro : " + this.M_numero + super.toString() ;
    }

    public boolean equals(CompteBancaire o2) {
        return Objects.equals(this.numero(), o2.numero());
    }


}