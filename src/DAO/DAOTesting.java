package DAO;

import com.octest.beans.Auteur;

import java.sql.SQLException;
import java.util.ArrayList;

public class DAOTesting {
    public static void main(String[] args) throws SQLException {
        // TODO Auto-generated method stub

        AuteurServices serviceDAO = new AuteurServices ();
        Auteur a1 =new Auteur("CHAOUB","Achraf",true) ;
        Auteur a2 =new Auteur("LAYLI","Abdo",false) ;

        //serviceDAO.ajouterAuteur(a1);
        //serviceDAO.ajouterAuteur(a2);

        /*
        // test Ok
        ArrayList<Auteur> liste = serviceDAO.afficherAuteurs();
        for(int  i = 0 ;i<liste.size();i++){
            System.out.println(liste.get(i).toString());
        }

        // test Ok
        ArrayList<Auteur> auteurX = serviceDAO.chercherAuteur("C");
        for(int  i = 0 ;i<auteurX.size();i++){
            System.out.println(auteurX.get(i).toString());
        }*/


        // test Ok
        //serviceDAO.supprimerAuteur(9);

        //test Ok
        System.out.println(serviceDAO.recupererAuteurParID(8));












    }
}
