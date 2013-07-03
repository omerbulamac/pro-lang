/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cehars;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author cehars
 */
@WebService(serviceName = "Yeni_Web_Servis_Adi")
public class Yeni_Web_Servis_Adi {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "operasyon1")
    public String operasyon1(@WebParam(name = "parametre1") String parametre1) {
        //TODO write your implementation code here:
        return "merhaba" + parametre1 ;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "operasyon2")
    public String operasyon2() {
        //TODO write your implementation code here:
        return "parametresiz operasyon(method-fonksiyon)";
    }
}
