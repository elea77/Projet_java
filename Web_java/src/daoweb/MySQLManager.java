package daoweb;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLManager {

	private static MySQLManager instance;
	private Connection connection = null;
	//Macbook
	private String url = "jdbc:mysql://localhost:8889/blog_java?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC";
	private String utilisateur = "root";
	private String motDePasse = "root";
	//Windows
//	private String url = "jdbc:mysql://localhost:3306/blog_java";
//	private String utilisateur = "root";
//	private String motDePasse = "";

	public Connection getConnection() {
		return connection;
	}
	
	public static synchronized MySQLManager getInstance() {
		if (instance == null) {
			instance = new MySQLManager();
		}
		return instance;
	}

	private MySQLManager() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.connection = DriverManager.getConnection(url, utilisateur, motDePasse);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	@Override
	protected void finalize() throws Throwable {
		super.finalize();
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {

			}
		}
	}
	
	
}
