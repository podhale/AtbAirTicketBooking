package com.podhale.domain;


public class Rezerwacja
{
    private int id;
    private String id_lotu;
    private String pesel;
    private String karta;
    private String imie;
    private String nazwisko;
    private String wylot;
    private String przylot;
    private String pasazerowie;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getId_lotu() {
        return id_lotu;
    }

    public void setId_lotu(String id_lotu) {
        this.id_lotu = id_lotu;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getKarta() {
        return karta;
    }

    public void setKarta(String karta) {
        this.karta = karta;
    }

    public String getWylot() {
        return wylot;
    }

    public void setWylot(String wylot) {
        this.wylot = wylot;
    }

    public String getPrzylot() {
        return przylot;
    }

    public void setPrzylot(String przylot) {
        this.przylot = przylot;
    }

    public String getPasazerowie() {
        return pasazerowie;
    }

    public void setPasazerowie(String pasazerowie) {
        this.pasazerowie = pasazerowie;
    }

    public Rezerwacja() {
    }



    public Rezerwacja(String id_lotu, String pesel, String karta, String imie, String nazwisko, String wylot, String przylot, String pasazerowie) {

        this.id_lotu = id_lotu;
        this.pesel = pesel;
        this.karta = karta;
        this.imie = imie;
        this.nazwisko = nazwisko;
        this.wylot = wylot;
        this.przylot = przylot;
        this.pasazerowie = pasazerowie;
    }


}
