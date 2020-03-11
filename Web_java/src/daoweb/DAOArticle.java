package daoweb;

import java.util.List;

import daowebmodel.Article;

public interface DAOArticle {
	
	public List<Article> getAllArticle();
	
	public List<Article> getArtindex();
	
	public Article getArticle(int id_article);
	
	public void addArticle (Article article);
	
	public List<Article> getAllAuteur();

	public void delArticle(Article article);
	
	public void updateArticle(Article article);



}
