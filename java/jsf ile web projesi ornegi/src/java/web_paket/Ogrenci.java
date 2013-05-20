/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package web_paket;

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
@Table(name = "ogrenci")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ogrenci.findAll", query = "SELECT o FROM Ogrenci o"),
    @NamedQuery(name = "Ogrenci.findByNo", query = "SELECT o FROM Ogrenci o WHERE o.no = :no"),
    @NamedQuery(name = "Ogrenci.findByAd", query = "SELECT o FROM Ogrenci o WHERE o.ad = :ad")})
public class Ogrenci implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "no")
    private Integer no;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ad")
    private String ad;

    public Ogrenci() {
    }

    public Ogrenci(Integer no) {
        this.no = no;
    }

    public Ogrenci(Integer no, String ad) {
        this.no = no;
        this.ad = ad;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getAd() {
        return ad;
    }

    public void setAd(String ad) {
        this.ad = ad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (no != null ? no.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ogrenci)) {
            return false;
        }
        Ogrenci other = (Ogrenci) object;
        if ((this.no == null && other.no != null) || (this.no != null && !this.no.equals(other.no))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "web_paket.Ogrenci[ no=" + no + " ]";
    }
    
}
