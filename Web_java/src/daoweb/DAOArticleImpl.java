package daoweb;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import daowebmodel.Article;



public class DAOArticleImpl implements DAOArticle {
	private Connection connection;

	public DAOArticleImpl(Connection connection) {
		this.connection = connection;
	}


	@Override
	public List<Article> getAllArticle() {

		List<Article> article = new ArrayList<Article>();
		try {
			String query = "SELECT * FROM article ORDER BY date DESC";
			PreparedStatement ps = connection.prepareStatement(query);

			ResultSet resultat = ps.executeQuery();

			while (resultat.next()) {
				Article art = new Article();
				
				art.setId_article(resultat.getInt("id_article"));
				art.setTitre(resultat.getString("titre"));
				art.setAuteur(resultat.getString("auteur"));
				art.setTexte(resultat.getString("texte"));
				art.setResume(resultat.getString("resume"));
				art.setDate(resultat.getDate("date"));
				art.setImage(resultat.getString("image"));
				
				article.add(art);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}
	
	
	public List<Article> getArtindex() {
	List<Article> article = new ArrayList<Article>();
	try {
		String query = "SELECT * FROM article ORDER BY date DESC LIMIT 2;";
		PreparedStatement ps = connection.prepareStatement(query);

		ResultSet resultat = ps.executeQuery();

		while (resultat.next()) {
			Article art = new Article();

			art.setId_article(resultat.getInt("id_article"));
			art.setTitre(resultat.getString("titre"));
			art.setAuteur(resultat.getString("auteur"));
			art.setTexte(resultat.getString("texte"));
			art.setResume(resultat.getString("resume"));
			art.setDate(resultat.getDate("date"));
			art.setImage(resultat.getString("image"));
			
			article.add(art);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return article;
}
	
	@Override
	public Article getArticle(int id_article) {
		Article art = new Article();
		try {
			String query = "SELECT * FROM article WHERE id_article=? ";

			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, id_article);

			ResultSet resultat = ps.executeQuery();

			while (resultat.next()) {
				
				art.setId_article(resultat.getInt("id_article"));
				art.setTitre(resultat.getString("titre"));
				art.setAuteur(resultat.getString("auteur"));
				art.setTexte(resultat.getString("texte"));
				art.setResume(resultat.getString("resume"));
				art.setDate(resultat.getDate("date"));
				art.setImage(resultat.getString("image"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}
		return art;
	}

	public void addArticle(Article article) {
		try {
			String generatedColumns[] = { "id_article" };	
			PreparedStatement ps = connection.prepareStatement(
					"INSERT INTO article (titre, auteur, texte, resume, date, image) VALUES (?,?,?,?,?,?);", generatedColumns);
			ps.setString(1, article.getTitre());
			ps.setString(2, article.getAuteur());
			ps.setString(3, article.getTexte());
			ps.setString(4, article.getResume());
			ps.setDate(5, (Date) article.getDate());
			ps.setString(6, article.getImage());

			ps.executeUpdate();
			
			ResultSet rs = ps.getGeneratedKeys();
			while(rs.next()) {
				article.setId_article(rs.getInt(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	

	public List<Article> getAllAuteur() {

		List<Article> article = new ArrayList<Article>();
		try {
			String query = "SELECT titre, auteur FROM article";
			PreparedStatement ps = connection.prepareStatement(query);

			ResultSet resultat = ps.executeQuery();

			while (resultat.next()) {
				Article art = new Article();
				
				art.setTitre(resultat.getString("titre"));
				art.setAuteur(resultat.getString("auteur"));
				
				article.add(art);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}
	
	public void delArticle(Article article) {
		try {
			String query = "DELETE FROM article WHERE id_article=? ;";
			
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, article.getId_article());
						
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void updateArticle(Article article) {
		try {
			String query = "UPDATE article SET titre=?, auteur=?, texte=?, resume=?, date=?, image=? WHERE id_article=? ;";
			PreparedStatement ps = connection.prepareStatement(query);
			
			
			ps.setString(1, article.getTitre());
			ps.setString(2, article.getAuteur());
			ps.setString(3, article.getTexte());
			ps.setString(4, article.getResume());
			ps.setDate(5, (Date) article.getDate());
			ps.setString(6, article.getImage());
			ps.setInt(7, article.getId_article());

			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	



}
