package com.octest.beans;

public class Plante {

    private int id;
    private String Description;
    private int prix;
    public Plante() {
    }

    public Plante(String Description, int prix) {
        this.Description = Description;
        this.prix = prix;
    }

    public Plante(int id, String Description, int prix) {
        this.id = id;
        this.Description = Description;
        this.prix = prix;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    @Override
    public String toString() {
        return "Plante{" +
                "id=" + id +
                ", Description='" + Description + '\'' +
                ", prix=" + prix +
                '}';
    }
}