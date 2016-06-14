package model;

public class TipoEsame {
	private String codice;
	private String nome;
	private String descrizione;
	private Integer costo;
	private String nomePrerequisiti;
	private String descrizionePrerequisiti;
	
	public TipoEsame(){}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Integer getCosto() {
		return costo;
	}

	public void setCosto(Integer costo) {
		this.costo = costo;
	}
	
	public String costoToString() {
		return "[" + this.getCosto() + "]";
	}

	public String getNomePrerequisiti() {
		return nomePrerequisiti;
	}

	public void setNomePrerequisiti(String nomePre) {
		this.nomePrerequisiti = nomePre;
	}

	public String getDescrizionePrerequisiti() {
		return descrizionePrerequisiti;
	}

	public void setDescrizionePrerequisiti(String descrizionePre) {
		this.descrizionePrerequisiti = descrizionePre;
	}
	
	public String getPrerequisiti() {
		return "<" + nomePrerequisiti + ": " + descrizionePrerequisiti + ">";
	}

	public void setPrerequisiti(String nomePre, String descrizionePre) {
		this.nomePrerequisiti = nomePre;
		this.descrizionePrerequisiti = descrizionePre;
	}

	public int hashCode(){
		return this.codice.hashCode();
	}

	public boolean equals(Object object) {
		TipoEsame tipoEsame = (TipoEsame)object;
		return (this.getCodice() == tipoEsame.getCodice());
	}
	
	public String toString() {
		return "[" + this.getCodice() + ", " +
					 this.getNome() + ", " + 
					 this.getDescrizione() + ", " + 
					 this.getCosto() + ", " +
					 this.getNomePrerequisiti() + ", " +
					 this.getDescrizionePrerequisiti() + "]";
	}
}
