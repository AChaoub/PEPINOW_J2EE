package com.octest.beans;

public class Auteur {

    public Auteur() {
    }

    public Auteur( String nom, String prenom, boolean actif) {
        this.nom = nom;
        this.prenom = prenom;
        this.actif = actif;
    }

    public Auteur(int id, String nom, String prenom, boolean actif) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.actif = actif;
    }

    private int id;
    private String nom;
    private String prenom;
    private boolean actif;

    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public boolean isActif() {
        return actif;
    }
    public void setActif(boolean actif) {
        this.actif = actif;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Auteur{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", actif=" + actif +
                '}';
    }
}