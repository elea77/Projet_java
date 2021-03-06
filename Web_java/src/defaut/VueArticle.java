package defaut;

import java.io.IOException;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoweb.DAOArticle;
import daoweb.DAOFactory;
import daowebmodel.Article;



public class VueArticle extends HttpServlet  {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		String paramArticle = req.getParameter("id_article");
		int id_article = Integer.parseInt(paramArticle);
		Article article = daoarticle.getArticle(id_article);

		
        req.setAttribute("article",article);

		this.getServletContext().getRequestDispatcher("/WEB-INF/vueArticle.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/vueArticle.jsp").forward(req, resp);
	}
}
