package DAO;

import ConnectionDB.Singleton;
import com.octest.beans.Plante;

import java.sql.*;
import java.util.ArrayList;

public class PlantesServices implements AuteurDAO {


    @Override
    public Plante ajouterPlante(Plante p) throws SQLException {
        Connection connection = Singleton.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO plante(Description_Plante,Prix_Plante)VALUES(?,?)");
            ps.setString(1,p.getDescription());
            ps.setInt(2, p.getPrix());
            ps.executeUpdate();
            PreparedStatement ps2 = connection.prepareStatement("SELECT MAX(id_Plante) as MAX_ID FROM plante");
            ResultSet rs = ps2.executeQuery();

            if(rs.next()) {
                p.setId(rs.getInt(1));
            }
            ps.close();
            ps2.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return p;
    }

    @Override
    public ArrayList<Plante> afficherPlantes() {
        ArrayList<Plante> ListePlantes = new ArrayList<Plante>();
        Connection connection = Singleton.getConnection();

        try {
            String requette = "SELECT * FROM plante";
            Statement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery(requette);

            while (re.next()) {
                Plante p = new Plante(re.getInt(1),re.getString(2),re.getInt(3));
                ListePlantes.add(p);
            }
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListePlantes;
    }


    @Override
    public void modifierPlante(int id,String Description,int Prix) {
        Connection connection = Singleton.getConnection();
        try {
            String requette = "UPDATE plante SET Description_Plante=?,Prix_Plante=? WHERE id_Plante = "+id;
            PreparedStatement s = connection.prepareStatement(requette);
            s.setString(1, Description);
            s.setInt(2, Prix);
            int re = s.executeUpdate();
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    @Override
    public void supprimerPlante(int id) {
        Connection connection = Singleton.getConnection();
        try {
            String requette = "SELECT * FROM plante WHERE id_Plante= "+id;
            Statement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery(requette);

            if(re.next()) {
                PreparedStatement ps = connection.prepareStatement("DELETE FROM plante WHERE id_Plante=?");
                ps.setInt(1,id);
                ps.executeUpdate();
                System.out.println("Suppression Avec Succes");
            }
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public ArrayList<Plante> chercherPlante(String MotC) throws SQLException {
        ArrayList<Plante> Liste = new ArrayList<Plante>();
        Connection connection = Singleton.getConnection();

        PreparedStatement s = connection.prepareStatement("SELECT * FROM plante Where Description_Plante LIKE ?  ");
        s.setString(1,"%"+MotC+"%");
        ResultSet rs = s.executeQuery();

        while(rs.next()){
            Plante plante = new Plante(rs.getInt(1),rs.getString(2),rs.getInt(3));
            Liste.add(plante);
        }

        return Liste;
    }

    @Override
    public Plante recupererPlanteParID(int id) throws SQLException {
        Plante plante = null;
        ArrayList<Plante> Liste = this.afficherPlantes();

        for(Plante x  : Liste){
            if(x.getId() == id){
                plante = x;
            }

        }
        return plante;
    }


}
