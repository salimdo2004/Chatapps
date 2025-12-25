package Client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DAO.DBConnection;

public class Connexion {

    public static boolean login(String nom, String password) {

        try {
            Connection conn = DBConnection.getConnection();

            String sql = "SELECT * FROM clients WHERE nom=? AND password=?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, nom);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            return rs.next(); // true si utilisateur existe

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
