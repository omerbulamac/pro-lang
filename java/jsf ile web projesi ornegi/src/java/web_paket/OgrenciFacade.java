/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package web_paket;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author cehars
 */
@Stateless
public class OgrenciFacade extends AbstractFacade<Ogrenci> {
    @PersistenceContext(unitName = "web_odev3PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OgrenciFacade() {
        super(Ogrenci.class);
    }
    
}
