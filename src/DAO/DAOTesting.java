package DAO;

import com.octest.beans.Plante;

import java.sql.SQLException;
import java.util.ArrayList;

public class DAOTesting {
    public static void main(String[] args) throws SQLException {
        // TODO Auto-generated method stub

        PlantesServices serviceDAO = new PlantesServices();
       //Plante p1 =new Plante("Photinia Fraseri Red Robin",100) ;
        // /Plante p2 =new Plante("Quercus Ilex",120) ;

        //serviceDAO.ajouterPlante(p1);
       // serviceDAO.ajouterPlante(p2);

/*
        // test Ok
        ArrayList<Plante> liste = serviceDAO.afficherPlantes();
        for(int i = 0; i< ((ArrayList) liste).size(); i++){
            System.out.println(liste.get(i).toString());
        }

        // test Ok
        ArrayList<Plante> PlanteX = serviceDAO.chercherPlante("Ph");
        for(int i = 0; i<  PlanteX.size(); i++){
            System.out.println(PlanteX.get(i).toString());
        }
*/



        // test Ok
        //serviceDAO.supprimerPlante(2);

        //test Ok
        //System.out.println(serviceDAO.recupererPlanteParID(1));












    }
}
