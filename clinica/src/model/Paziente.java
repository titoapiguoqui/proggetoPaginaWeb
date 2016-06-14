package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Paziente {
	private Long id;
	private String nome;
	private String cognome;
	private Date dataNascita;
	private String gruppoSang;
	private String email;
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	public Paziente(){}

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

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	
	public String getGruppoSang() {
		return gruppoSang;
	}

	public void setGruppoSang(String gruppoSang) {
		this.gruppoSang = gruppoSang;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public int hashCode(){
		return this.id.hashCode();
	}

	public boolean equals(Object object) {
		Paziente paziente = (Paziente)object;
		return (this.getId() == paziente.getId());
	}
	
	public String toString() {
		return "[" + this.getId() + ", " + 
					 this.getNome() + ", " + 
					 this.getCognome() + ", " +
					 sdf.format(this.getDataNascita()) + ", " + 
					 this.getGruppoSang() + ", " + 
					 this.getEmail() + "]";
	}
}