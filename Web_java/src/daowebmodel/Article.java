package daowebmodel;

import java.sql.Date;

public class Article {
	private int id_article;
	private String titre;
	private String auteur;
	private String texte;
    private String resume;
    private Date date;
    private String image;
	
	
	public int getId_article() {
		return id_article;
	}
	public void setId_article(int id_article) {
		this.id_article = id_article;
	}
	
	
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	
	
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}

	
	public String getTexte() {
		return texte;
	}
	public void setTexte(String texte) {
		this.texte = texte;
	}

    public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}	

    public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

    public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}


}
