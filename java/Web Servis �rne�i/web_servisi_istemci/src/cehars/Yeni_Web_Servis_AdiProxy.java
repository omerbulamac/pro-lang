package cehars;

public class Yeni_Web_Servis_AdiProxy implements cehars.Yeni_Web_Servis_Adi_PortType {
  private String _endpoint = null;
  private cehars.Yeni_Web_Servis_Adi_PortType yeni_Web_Servis_Adi_PortType = null;
  
  public Yeni_Web_Servis_AdiProxy() {
    _initYeni_Web_Servis_AdiProxy();
  }
  
  public Yeni_Web_Servis_AdiProxy(String endpoint) {
    _endpoint = endpoint;
    _initYeni_Web_Servis_AdiProxy();
  }
  
  private void _initYeni_Web_Servis_AdiProxy() {
    try {
      yeni_Web_Servis_Adi_PortType = (new cehars.Yeni_Web_Servis_Adi_ServiceLocator()).getYeni_Web_Servis_AdiPort();
      if (yeni_Web_Servis_Adi_PortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)yeni_Web_Servis_Adi_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)yeni_Web_Servis_Adi_PortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (yeni_Web_Servis_Adi_PortType != null)
      ((javax.xml.rpc.Stub)yeni_Web_Servis_Adi_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public cehars.Yeni_Web_Servis_Adi_PortType getYeni_Web_Servis_Adi_PortType() {
    if (yeni_Web_Servis_Adi_PortType == null)
      _initYeni_Web_Servis_AdiProxy();
    return yeni_Web_Servis_Adi_PortType;
  }
  
  public java.lang.String operasyon2() throws java.rmi.RemoteException{
    if (yeni_Web_Servis_Adi_PortType == null)
      _initYeni_Web_Servis_AdiProxy();
    return yeni_Web_Servis_Adi_PortType.operasyon2();
  }
  
  public java.lang.String operasyon1(java.lang.String parametre1) throws java.rmi.RemoteException{
    if (yeni_Web_Servis_Adi_PortType == null)
      _initYeni_Web_Servis_AdiProxy();
    return yeni_Web_Servis_Adi_PortType.operasyon1(parametre1);
  }
  
  
}