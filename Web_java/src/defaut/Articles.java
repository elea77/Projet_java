package defaut;


import java.io.IOException;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoweb.DAOArticle;
import daoweb.DAOFactory;
import daowebmodel.Article;


public class Articles extends HttpServlet  {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		List<Article> article = daoarticle.getAllArticle();
		
		
		req.setAttribute("article", article);

		this.getServletContext().getRequestDispatcher("/WEB-INF/articles.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		
		
		String paramId = req.getParameter("id_article");
		int id_article = Integer.parseInt(paramId);

		Article art = new Article();
		art.setId_article(id_article);
		daoarticle.delArticle(art);
		

		this.getServletContext().getRequestDispatcher("/WEB-INF/articles.jsp").forward(req, resp);
	}
}
