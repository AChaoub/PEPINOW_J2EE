package com.octest.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.PlantesServices;
import com.octest.beans.Plante;



public class Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    PlantesServices serviceDAO = new PlantesServices();

    public Servlet() {
        super();
    }


    protected void init(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        if (path.equals("/acc")) {
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/Acceuil.jsp").forward(request, response);
        }

        else if (path.equals("/page")){
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/PageGestion.jsp").forward(request, response);
        }

        else if (path.equals("/supp")) {
            int id = Integer.parseInt(request.getParameter("supp_Val"));
            serviceDAO.supprimerPlante(id);
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/PageGestion.jsp").forward(request, response);
        }

        else if (path.equals("/pageGestion")) {
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/PageGestion.jsp").forward(request, response);
        }

        else if (path.equals("/chercher")) {
            String MotCle = request.getParameter("inputCherche");
            ArrayList<Plante> plantes = null;
            try {
                plantes = serviceDAO.chercherPlante(MotCle);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/Acceuil.jsp").forward(request, response);
        }
        else if (path.equals("/recup")) {
            int id = Integer.parseInt(request.getParameter("modif_Val"));
            Plante planteX= null;
            try {
                planteX = serviceDAO.recupererPlanteParID(id);
                System.out.println(planteX.toString());
            } catch (SQLException e) {
                e.printStackTrace();
            }
            request.setAttribute("planteX", planteX);
            request.getRequestDispatcher("/PopUp.jsp").forward(request, response);
        }
        if(path.startsWith("/")) {
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            request.setAttribute("plantes", plantes);
            request.getRequestDispatcher("/PageGestion.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();

        if (path.equals("/ajouter")) {
            String description = req.getParameter("nom");
            String prix= req.getParameter("prenom");

            Plante p = new Plante(description,Integer.parseInt(prix));
            try {
                serviceDAO.ajouterPlante(p);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            req.setAttribute("plantes", plantes);
            req.getRequestDispatcher("/PageGestion.jsp").forward(req,resp);
        }


        else if (path.equals("/modifier")) {
            String description = req.getParameter("description_modif");
            String prix= req.getParameter("prix_modif");
            int id= Integer.parseInt(req.getParameter("id_modif"));

            Plante p = null;
            try {
                p = serviceDAO.recupererPlanteParID(id);
                serviceDAO.modifierPlante(id,description,Integer.parseInt(prix));
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                serviceDAO.ajouterPlante(p);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            ArrayList<Plante> plantes = serviceDAO.afficherPlantes();
            req.setAttribute("plantes", plantes);
            req.getRequestDispatcher("/PageGestion.jsp").forward(req,resp);
        }

    }
}