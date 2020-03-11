package defaut;


import java.io.IOException;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoweb.DAOArticle;
import daoweb.DAOFactory;
import daowebmodel.Article;



public class CreerArticle extends HttpServlet  {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		this.getServletContext().getRequestDispatcher("/WEB-INF/creerArticle.jsp").forward(req, resp);
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

		art.setTitre(paramTitre);
		art.setAuteur(paramAuteur);
		art.setResume(paramResume);
		art.setTexte(paramTexte);
		art.setDate(date);
		art.setImage(paramImage);

		DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		daoarticle.addArticle(art);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/creerArticle.jsp").forward(req, resp);
	}
}
