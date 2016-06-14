package model;

import java.text.SimpleDateFormat;
import java.util.Date;
//import java.util.Random;

public class Esame {
	private String codice;
	private String codiceTipoEsame;
	private String nomeTipoEsame;
	private String idPaziente;
	private String nomePaziente;
	private String dataPrenotazione;
	private String dataEsame;
	private String nomeMedico;
	private String cognomeMedico;
	private String nomeRisultati;
	private String descrizioneRisultati;
	Date data = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("EEEE dd MMMM yyyy HH:mm:ss aa zzz");

	public Esame() {
	}

	public String getCodice() {
		// String cod = "";
		// char[] caratteri = new char[] { '0', '1', '2', '3', '4', '5', '6',
		// '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
		// 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
		// 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
		// 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
		// 'p', 'q', 'r', 's', 't', 'u', 'v',
		// 'w', 'x', 'y', 'z', '#', '$', '~', '%', '&', '/', '*', '+', '-', '_'
		// };
		// int repet = (int) Math.floor(Math.random() * (20 - 1 + 1) + 1);
		// for (int i = 0; i < repet; i++) {
		// cod += caratteri[new Random().nextInt(75)];
		// }
		// codice = cod;
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public String getCodiceTipoEsame() {
		return codiceTipoEsame;
	}

	public void setCodiceTipoEsame(String codiceTipoEsame) {
		this.codiceTipoEsame = codiceTipoEsame;
	}

	public String getNomeTipoEsame() {
		return nomeTipoEsame;
	}

	public void setNomeTipoEsame(String nomeTipoEsame) {
		this.nomeTipoEsame = nomeTipoEsame;
	}

	public String getIdPaziente() {
		return idPaziente;
	}

	public void setIdPaziente(String idPaziente) {
		this.idPaziente = idPaziente;
	}

	public String getNomePaziente() {
		return nomePaziente;
	}

	public void setNomePaziente(String paziente) {
		this.nomePaziente = paziente;
	}

	public String getDataPrenotazione() {
		dataPrenotazione = sdf.format(data);
		return dataPrenotazione;
	}

	public void setDataPrenotazione(String dataPrenotazione) {
		this.dataPrenotazione = dataPrenotazione;
	}

	public String getDataEsame() {
		return dataEsame;
	}

	public void setDataEsame(String dataEsame) {
		this.dataEsame = dataEsame;
	}

	public String getNomeMedico() {
		return nomeMedico;
	}

	public void setNomeMedico(String nomeMedico) {
		this.nomeMedico = nomeMedico;
	}

	public String getCognomeMedico() {
		return cognomeMedico;
	}

	public void setCognomeMedico(String cognomeMedico) {
		this.cognomeMedico = cognomeMedico;
	}

	public String getNomeRisultati() {
		return nomeRisultati;
	}

	public void setNomeRisultati(String nomeRis) {
		this.nomeRisultati = nomeRis;
	}

	public String getDescrizioneRisultati() {
		return descrizioneRisultati;
	}

	public void setDescrizioneRisultati(String descrizioneRis) {
		this.descrizioneRisultati = descrizioneRis;
	}

	public String getRisultati() {
		return "<\"nomeRisultati\": \"descrizioneRisultati\">";
	}

	public void setRisultati(String nomeRis, String descrizioneRis) {
		this.nomeRisultati = nomeRis;
		this.descrizioneRisultati = descrizioneRis;
	}

	public String toString() {
		return "[" + this.getCodice() + sdf.format(this.getDataPrenotazione()) + ", " + sdf.format(this.getDataEsame())
				+ ", " + this.getNomeRisultati() + ", " + this.getDescrizioneRisultati() + "]";
	}
}