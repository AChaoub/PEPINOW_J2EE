package com.octest.servlets;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AuteurServices;
import com.octest.beans.Auteur;



public class Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    AuteurServices serviceDAO = new AuteurServices ();

    public Servlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Auteur> auteurs = serviceDAO.afficherAuteurs();
        request.setAttribute("auteurs", auteurs);
        this.getServletContext().getRequestDispatcher("/WEB-INF/Exemple.jsp").forward(request, response);
    }


}