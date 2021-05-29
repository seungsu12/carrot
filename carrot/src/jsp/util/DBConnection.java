package jsp.util;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


// 커넥션을 얻어오는 클래스 - JNDI
public class DBConnection {

	public static Connection getConnection() throws SQLException,NamingException,ClassNotFoundException{
			
			Context initCtx = new InitialContext();
			
			//initCtx 의 looku메서드를 이요해서 "java:comp/env에 해당하는 
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			
			//envCtx의 lookup메서드를 이요해서 "jdbc/oralce"에 해당하는 객체를 찾아 ds에 삽입
			DataSource ds = (DataSource) envCtx.lookup("jdbc/orcl");
			
			//getConnection메서드를 이용해서 커넥션 풀로 부터 커낵션 개체를 얻어내어 conn변수 저장
			Connection conn = ds.getConnection();
			return conn;
	}
}
