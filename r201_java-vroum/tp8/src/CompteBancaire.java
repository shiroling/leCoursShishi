

public class CompteBancaire extends Compte {
    /**
     * numero du compte bancaire
     */
    private String numero;

    /**
     * cree un compte bancaire vide
     * 
     * @param numero
     *                   numero du compte bancaire
     */
    public CompteBancaire(String numero) {
        this.numero = numero;
    }

    /**
     * fournit le numero du compte bancaire
     * 
     * @return numero du compte bancaire
     */
    public String getNumero() {
        return this.numero;
    }

    /**
     * fournit une version unicode d'un compte bancaire
     * 
     * @return chaene contenant le numero concatene au credit concatene au debit
     */
    @Override
    public String toString() {
        return "Numero : " + this.getNumero() + ", " + super.toString();
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((numero == null) ? 0 : numero.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!(obj instanceof CompteBancaire)) {
			return false;
		}
		CompteBancaire other = (CompteBancaire) obj;
		if (numero == null) {
			if (other.numero != null) {
				return false;
			}
		} else if (!numero.equals(other.numero)) {
			return false;
		}
		return true;
	}

}
