/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cehars.service;

import cehars.Rezervasyon;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author cehars
 */
@Stateless
@Path("cehars.rezervasyon")
public class RezervasyonFacadeREST extends AbstractFacade<Rezervasyon> {
    @PersistenceContext(unitName = "WebApplication11PU")
    private EntityManager em;

    public RezervasyonFacadeREST() {
        super(Rezervasyon.class);
    }

    @POST
    @Override
    @Consumes({"application/xml", "application/json"})
    public void create(Rezervasyon entity) {
        super.create(entity);
    }

    @PUT
    @Override
    @Consumes({"application/xml", "application/json"})
    public void edit(Rezervasyon entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces({"application/xml", "application/json"})
    public Rezervasyon find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces({"application/xml", "application/json"})
    public List<Rezervasyon> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({"application/xml", "application/json"})
    public List<Rezervasyon> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces("text/plain")
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    @GET
    @Path("deneme")
    //@Produces({"application/xml", "application/json"})
    public String tmm() {
        
        return "islem basariyla tamamlandı";
        
    }
    
    @GET
    @Path("deneme/{id2}")
    // @Produces({"application/xml", "application/json"})
    public String tmm2(@PathParam("id2") Integer id2) {
        
        return "islem basariyla tamamlandı parametre -> "+id2;
        
    }
    
}
