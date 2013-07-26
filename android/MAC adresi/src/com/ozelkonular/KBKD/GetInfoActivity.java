package com.ozelkonular.KBKD;

import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.widget.TextView;

public class GetInfoActivity extends Activity {

	private TextView mac;
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
 
		mac=(TextView) findViewById(R.id.textView1_mac);
        String mac_adresi=get_mac_address();
		mac.setText("Mac => "+mac_adresi);

    }

    @SuppressWarnings("unused")
	private String get_mac_address()
	{
		ConnectivityManager connMgr = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo wifi = connMgr.getNetworkInfo(ConnectivityManager.TYPE_WIFI);

	    try{
	    	WifiManager wifiMan = (WifiManager) this.getSystemService(Context.WIFI_SERVICE);
	        WifiInfo wifiInf = wifiMan.getConnectionInfo();
	        return wifiInf.getMacAddress();
	    }
	    catch (Exception e) {
	    	return "00:00:00";
		}
	}
}
