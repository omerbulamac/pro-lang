package com.example.gpsdeneme;
 
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
 
public class MainActivity extends Activity {
 
	public void onCreate(Bundle savedInstanceState)
 
	{
 
		super.onCreate(savedInstanceState);
 
		setContentView(R.layout.activity_main);
		final String gpsAcildi = "GPS Acýldý";
		final String gpsKapatildi = "GPS Kapalý";
 
		final TextView konumText = (TextView)findViewById(R.id.textView2);
 
		LocationManager konumYoneticisi = (LocationManager)getSystemService(Context.LOCATION_SERVICE);
 
		LocationListener konumDinleyicisi = new LocationListener() {
 
			@Override
			public void onStatusChanged(String provider, int status, Bundle extras) {
 
			}
 
			@Override
			public void onProviderEnabled(String provider) {
				Toast.makeText( getApplicationContext(),gpsAcildi,Toast.LENGTH_SHORT).show();
				konumText.setText("GPS Veri bilgileri Alýnýyor...");
			}
 
			@Override
			public void onProviderDisabled(String provider) { 
				 Toast.makeText( getApplicationContext(),gpsKapatildi,Toast.LENGTH_SHORT).show();
				 konumText.setText("GPS Baðlantý Bekleniyor...");
			}
 
			@Override
			public void onLocationChanged(Location loc) {
				loc.getLatitude();
				loc.getLongitude();
 
				String Text = "Bulunduðunuz konum bilgileri : \n" +"Latitud = " + loc.getLatitude() +"\nLongitud = "+ loc.getLongitude();
				konumText.setText(Text);
			}
		};
 
		konumYoneticisi.requestLocationUpdates( LocationManager.GPS_PROVIDER, 0, 0, konumDinleyicisi);
		}
 
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
}