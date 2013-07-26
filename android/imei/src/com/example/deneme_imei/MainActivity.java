package com.example.deneme_imei;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.view.Menu;
import android.widget.TextView;

import android.telephony.TelephonyManager;



public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main); 
		final TextView textView1 = (TextView) findViewById(R.id.textView1);
		
		
		TelephonyManager telephonyManager;
		
		telephonyManager = (TelephonyManager)getSystemService(Context.TELEPHONY_SERVICE);

		String a = telephonyManager.getDeviceId().toString();
		
		textView1.setText(a);
		

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
