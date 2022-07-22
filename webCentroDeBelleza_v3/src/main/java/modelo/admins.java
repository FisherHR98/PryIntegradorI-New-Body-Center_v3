
package modelo;


public class admins {
    private String codigo;
    private String passw;
    
    public admins(){
    
    }

    public admins(String codigo, String passw) {
        this.codigo = codigo;
        this.passw = passw;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getPassw() {
        return passw;
    }

    public void setPassw(String passw) {
        this.passw = passw;
    }
    
}
