/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cehars;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author cehars
 */
@Entity
@Table(name = "rezervasyon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rezervasyon.findAll", query = "SELECT r FROM Rezervasyon r"),
    @NamedQuery(name = "Rezervasyon.findById", query = "SELECT r FROM Rezervasyon r WHERE r.id = :id"),
    @NamedQuery(name = "Rezervasyon.findByIsim", query = "SELECT r FROM Rezervasyon r WHERE r.isim = :isim"),
    @NamedQuery(name = "Rezervasyon.findByFiyat", query = "SELECT r FROM Rezervasyon r WHERE r.fiyat = :fiyat"),
    @NamedQuery(name = "Rezervasyon.findByBos", query = "SELECT r FROM Rezervasyon r WHERE r.bos = :bos")})
public class Rezervasyon implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "isim")
    private String isim;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fiyat")
    private int fiyat;
    @Basic(optional = false)
    @NotNull
    @Column(name = "bos")
    private int bos;

    public Rezervasyon() {
    }

    public Rezervasyon(Integer id) {
        this.id = id;
    }

    public Rezervasyon(Integer id, String isim, int fiyat, int bos) {
        this.id = id;
        this.isim = isim;
        this.fiyat = fiyat;
        this.bos = bos;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIsim() {
        return isim;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public int getFiyat() {
        return fiyat;
    }

    public void setFiyat(int fiyat) {
        this.fiyat = fiyat;
    }

    public int getBos() {
        return bos;
    }

    public void setBos(int bos) {
        this.bos = bos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rezervasyon)) {
            return false;
        }
        Rezervasyon other = (Rezervasyon) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cehars.Rezervasyon[ id=" + id + " ]";
    }
    
}
