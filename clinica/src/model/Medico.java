package model;

import model.Medico;

public class Medico {
	private Long id;
	private String nome;
	private String cognome;
	private String specializzazione;
	
	public Medico(){}
	
	public Long getId() {
		return id;
	}
		
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
		
	public void setNome(String nome) {
		this.nome = nome;
	}
		
	public String getCognome() {
		return cognome;
	}
		
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
		
	public String getSpecializzazione() {
		return specializzazione;
	}
		
	public void setSpecializzazione(String specializzazione) {
		this.specializzazione = specializzazione;
	}
	
	public int hashCode(){
		return this.id.hashCode();
	}

	public boolean equals(Object object) {
		Medico medico = (Medico)object;
		return (this.getId() == medico.getId());
	}
	
	public String toString() {
		return "[" + this.getId() + ", " + 
				     this.getNome() + ", " + 
					 this.getCognome() + ", " +
					 this.getSpecializzazione() + "]"; 		
	}
}