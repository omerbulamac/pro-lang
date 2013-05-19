package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the cehars database table.
 * 
 */
@Entity
public class Cehars implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int numara;

	private String ad;

	public Cehars() {
	}

	public int getNumara() {
		return this.numara;
	}

	public void setNumara(int numara) {
		this.numara = numara;
	}

	public String getAd() {
		return this.ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

}