package com.podhale.forms;


public class Form {

	private String wyloty;
	private String przylot;
	private String wylot;
	private String powrot;
	private int liczbaPasazerow;
	private int id_lotu;


	public int getId_lotu() {
		return id_lotu;
	}

	public void setId_lotu(int id_lotu) {
		this.id_lotu = id_lotu;
	}


	public String getWyloty() {
		return wyloty;
	}

	public void setWyloty(String wyloty) {
		this.wyloty = wyloty;
	}

	public String getPrzylot() {
		return przylot;
	}

	public void setPrzylot(String przylot) {
		this.przylot = przylot;
	}

	public String getWylot() {
		return wylot;
	}

	public void setWylot(String wylot) {
		this.wylot = wylot;
	}

	public String getPowrot() {
		return powrot;
	}

	public void setPowrot(String powrot) {
		this.powrot = powrot;
	}

	public int getLiczbaPasazerow() {
		return liczbaPasazerow;
	}

	public void setLiczbaPasazerow(int liczbaPasazerow) {
		this.liczbaPasazerow = liczbaPasazerow;
	}

	public Form() {
	}

	public Form(String wyloty, String przylot, String wylot, String powrot, int liczbaPasazerow) {
		this.wyloty = wyloty;
		this.przylot = przylot;
		this.wylot = wylot;
		this.powrot = powrot;
		this.liczbaPasazerow = liczbaPasazerow;
	}
}
