package Client;

public class clients {
	private int ID;
	String nom,password;
	public clients(int ID, String nom,String password) {
		super();
		this.ID =ID;
		this.nom =nom;
		this.password =password;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
