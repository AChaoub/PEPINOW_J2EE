package DAO;

import com.octest.beans.Auteur;

import java.sql.SQLException;
import java.util.ArrayList;

public interface AuteurDAO {

    public Auteur ajouterAuteur(Auteur a) throws SQLException;
    public ArrayList<Auteur> afficherAuteurs();
    public void modifierAuteur(Auteur a);
    public void supprimerAuteur(int id);
    public ArrayList<Auteur> chercherAuteur(String x) throws SQLException;
    public Auteur recupererAuteurParID(int id) throws SQLException;
}
