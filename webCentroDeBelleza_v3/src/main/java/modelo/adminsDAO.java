
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class adminsDAO implements Validar{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    /*METODO PARA VALIDAR EL LOGIN DEL ADMINISTRADOR*/
    @Override
    public int validar(admins adm) {
        String sql="Select * from admins where CODIGO=? and PASSW=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, adm.getCodigo());
            ps.setString(2, adm.getPassw());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                adm.setCodigo(rs.getString("CODIGO"));
                adm.setPassw(rs.getString("PASSW"));
            }
            if(r==1){
                r=0;
                return 1;
            }else{
                return 0;
            }
        } catch (SQLException e) {
            return 0;
        }
    }
}


