package defaut;

import java.io.IOException;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoweb.DAOArticle;
import daoweb.DAOFactory;
import daowebmodel.Article;


public class Index extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	DAOFactory factory = new DAOFactory();
		DAOArticle daoarticle = factory.getDaoArticle();
		List<Article> article = daoarticle.getArtindex();
		
		
		req.setAttribute("article", article);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
        
    }
    
    @Override 
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(req, resp);
    }
    
    
}