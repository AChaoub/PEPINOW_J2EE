package DAO;

import com.octest.beans.Plante;

import java.sql.SQLException;
import java.util.ArrayList;

public interface AuteurDAO {

    public Plante ajouterPlante(Plante p) throws SQLException;
    public ArrayList<Plante> afficherPlantes();
    public void modifierPlante(int id,String a , int b);
    public void supprimerPlante(int id);
    public ArrayList<Plante> chercherPlante(String x) throws SQLException;
    public Plante recupererPlanteParID(int id) throws SQLException;
}
