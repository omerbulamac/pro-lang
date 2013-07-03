package cehars;

public class test {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub

		
		Yeni_Web_Servis_Adi_Service service = new Yeni_Web_Servis_Adi_ServiceLocator();
		
		Yeni_Web_Servis_Adi_PortType port = service.getYeni_Web_Servis_AdiPort();
        String cevap = port.operasyon1("deneme");
        System.out.println("Web Servisinin Cevabý: "+ cevap );
		
		
	}

}
