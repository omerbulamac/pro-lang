/**
 * Yeni_Web_Servis_Adi_ServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package cehars;

public class Yeni_Web_Servis_Adi_ServiceLocator extends org.apache.axis.client.Service implements cehars.Yeni_Web_Servis_Adi_Service {

    public Yeni_Web_Servis_Adi_ServiceLocator() {
    }


    public Yeni_Web_Servis_Adi_ServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public Yeni_Web_Servis_Adi_ServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Yeni_Web_Servis_AdiPort
    private java.lang.String Yeni_Web_Servis_AdiPort_address = "http://localhost:8084/Web_Servisi1/Yeni_Web_Servis_Adi";

    public java.lang.String getYeni_Web_Servis_AdiPortAddress() {
        return Yeni_Web_Servis_AdiPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String Yeni_Web_Servis_AdiPortWSDDServiceName = "Yeni_Web_Servis_AdiPort";

    public java.lang.String getYeni_Web_Servis_AdiPortWSDDServiceName() {
        return Yeni_Web_Servis_AdiPortWSDDServiceName;
    }

    public void setYeni_Web_Servis_AdiPortWSDDServiceName(java.lang.String name) {
        Yeni_Web_Servis_AdiPortWSDDServiceName = name;
    }

    public cehars.Yeni_Web_Servis_Adi_PortType getYeni_Web_Servis_AdiPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Yeni_Web_Servis_AdiPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getYeni_Web_Servis_AdiPort(endpoint);
    }

    public cehars.Yeni_Web_Servis_Adi_PortType getYeni_Web_Servis_AdiPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            cehars.Yeni_Web_Servis_AdiPortBindingStub _stub = new cehars.Yeni_Web_Servis_AdiPortBindingStub(portAddress, this);
            _stub.setPortName(getYeni_Web_Servis_AdiPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setYeni_Web_Servis_AdiPortEndpointAddress(java.lang.String address) {
        Yeni_Web_Servis_AdiPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (cehars.Yeni_Web_Servis_Adi_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                cehars.Yeni_Web_Servis_AdiPortBindingStub _stub = new cehars.Yeni_Web_Servis_AdiPortBindingStub(new java.net.URL(Yeni_Web_Servis_AdiPort_address), this);
                _stub.setPortName(getYeni_Web_Servis_AdiPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("Yeni_Web_Servis_AdiPort".equals(inputPortName)) {
            return getYeni_Web_Servis_AdiPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://cehars/", "Yeni_Web_Servis_Adi");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://cehars/", "Yeni_Web_Servis_AdiPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Yeni_Web_Servis_AdiPort".equals(portName)) {
            setYeni_Web_Servis_AdiPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
