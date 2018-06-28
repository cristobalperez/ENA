    import java.sql.*;
    
    
public class Conexión {
    public Connection connect (){
        try {
            Class.forName("com.mysql.jdbcDriver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimientos","root","");
            Statement st= conn.createStatement();
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    }
}


