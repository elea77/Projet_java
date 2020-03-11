package defaut;


import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoweb.DAOFactory;
import daoweb.DAOArticle;
import daowebmodel.Article;



public class ModifArticle extends HttpServlet  {
	private int id_article;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DAOFactory factory= new DAOFactory();
		DAOArticle daoarticle= factory.getDaoArticle();
		String paramArticle =req.getParameter("id_article");
		setId_article(Integer.parseInt(paramArticle));
		Article article = daoarticle.getArticle(getId_article());
		
		
		
        req.setAttribute("article",article);

		this.getServletContext().getRequestDispatcher("/WEB-INF/modifArticle.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String paramTitre = req.getParameter("titre");
		String paramAuteur = req.getParameter("auteur");
		String paramResume = req.getParameter("resume");
		String paramTexte = req.getParameter("texte");
		String paramImage = req.getParameter("image");

		Article art = new Article();
		java.util.Date d = new java.util.Date();
		java.sql.Date date = new java.sql.Date(d.getTime());

		art.setId_article(getId_article());
		art.setTitre(paramTitre);
		art.setAuteur(paramAuteur);
		art.setResume(paramResume);
		art.setTexte(paramTexte);
		art.setDate(date);
		art.setImage(paramImage);

	

		DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		daoarticle.updateArticle(art);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/modifArticle.jsp").forward(req, resp);
	}
	
	public int getId_article() {
		return id_article;
	}

	public void setId_article(int id_article) {
		this.id_article = id_article;
	}
}



