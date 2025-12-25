package Client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import DAO.DBConnection;


public class Inscription {

    // On utilise la bonne classe : Clients (avec C majuscule)
    public static boolean register(clients c) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO clients (nom, password) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, c.getNom());
            ps.setString(2, c.getPassword());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
