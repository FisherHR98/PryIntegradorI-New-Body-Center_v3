package modelo;

public class clientes {
    private String id;
    private String dni_cli;
    private String telf;
    private String pack;
    private String fecha;
    private String hora;


    public clientes() {
    }

    public clientes(String id, String dni_cli, String telf, String pack, String fecha, String hora) {
        this.id = id;
        this.dni_cli = dni_cli;
        this.telf = telf;
        this.pack = pack;
        this.fecha = fecha;
        this.hora = hora;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDni_cli() {
        return dni_cli;
    }

    public void setDni_cli(String dni_cli) {
        this.dni_cli = dni_cli;
    }

    public String getTelf() {
        return telf;
    }

    public void setTelf(String telf) {
        this.telf = telf;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    


    
    
}
