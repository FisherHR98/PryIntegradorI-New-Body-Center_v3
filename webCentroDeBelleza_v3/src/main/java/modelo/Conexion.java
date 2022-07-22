
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

/*CONEXION PARA LOS LOGINS*/
public class Conexion {
    Connection con;
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/bdnewbodycenter","root","");
        } catch (Exception e) {
        }
        return con;
    }
}
