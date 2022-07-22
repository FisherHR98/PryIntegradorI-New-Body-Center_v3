
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class clientesDAO implements Validar2{
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;

    /*METODOS PARA OBTENER LA LISTA DE CITAS POR DNI*/
    @Override
    public int validar2(clientes clie) {
        String sql="Select * from cita where DNI_CLI=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, clie.getDni_cli());
            
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                clie.setDni_cli(rs.getString("DNI_CLI"));
            }
            if(r==1){
                r=0;
                return 1;
            }else{
                return 0;
            }
        }catch (SQLException e) {
            return 0;
        }
    }

/*METODOS PARA VALIDAR EL LOGIN DEL CLIENTE*/
    public int validar3(clientes clie) {
        String sql="Select * from cliente where DNI=? and TELF=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, clie.getDni_cli());
            ps.setString(2, clie.getTelf());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                clie.setDni_cli(rs.getString("DNI"));
                clie.setTelf(rs.getString("TELF"));
            }
            if(r==1){r=0;
                return 1;
            }else{
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }
        }
    
    }

