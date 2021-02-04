package DAO;

import ConnectionDB.Singleton;
import com.octest.beans.Auteur;

import java.sql.*;
import java.util.ArrayList;

public class AuteurServices implements AuteurDAO {


    @Override
    public Auteur ajouterAuteur(Auteur a) throws SQLException {
        Connection connection = Singleton.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO Auteur(nomAuteur,prenomAuteur, Actif)VALUES(?,?,?)");
            ps.setString(1,a.getNom());
            ps.setString(2, a.getPrenom());
            ps.setBoolean(3, a.isActif());
            ps.executeUpdate();
            PreparedStatement ps2 = connection.prepareStatement("SELECT MAX(idAuteur) as MAX_ID FROM Auteur");
            ResultSet rs = ps2.executeQuery();

            if(rs.next()) {
                a.setId(rs.getInt(1));
            }
            ps.close();
            ps2.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return a;
    }

    @Override
    public ArrayList<Auteur> afficherAuteurs() {
        ArrayList<Auteur> ListeAuteur = new ArrayList<Auteur>();
        Connection connection = Singleton.getConnection();

        try {
            String requette = "SELECT * FROM AUTEUR";
            Statement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery(requette);

            while (re.next()) {
                Auteur a = new Auteur(re.getInt(1),re.getString(2),re.getString(3),re.getBoolean(4));
                ListeAuteur.add(a);
            }
            s.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ListeAuteur;
    }

    @Override
    public void modifierAuteur(Auteur a) {


    }

    @Override
    public void supprimerAuteur(int id) {
        Connection connection = Singleton.getConnection();
        try {
            String requette = "SELECT * FROM AUTEUR WHERE idAuteur = "+id;
            Statement s = connection.prepareStatement(requette);
            ResultSet re = s.executeQuery(requette);

            if(re.next()) {
                PreparedStatement ps = connection.prepareStatement("DELETE FROM auteur WHERE idAuteur=?");
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
    public ArrayList<Auteur> chercherAuteur(String MotC) throws SQLException {
        ArrayList<Auteur> Liste = new ArrayList<Auteur>();
        Connection connection = Singleton.getConnection();

        PreparedStatement s = connection.prepareStatement("SELECT * FROM auteur Where nomAuteur LIKE ?  ");
        s.setString(1,"%"+MotC+"%");
        ResultSet rs = s.executeQuery();


        while(rs.next()){

            Auteur auteur = new Auteur(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getBoolean(4));
            Liste.add(auteur);
        }

        return Liste;
    }

    @Override
    public Auteur recupererAuteurParID(int id) throws SQLException {
        Auteur auteur = null;
        ArrayList<Auteur> Liste = this.afficherAuteurs();

        for(Auteur x  : Liste){
            if(x.getId() == id){
                auteur = x;
            }

        }
        return auteur;
    }


}
