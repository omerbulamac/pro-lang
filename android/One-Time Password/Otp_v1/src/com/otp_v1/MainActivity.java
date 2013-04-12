package com.otp_v1;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.security.SecureRandom;
import java.util.Random;
 

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		final String chars = "abcdefghijklmnopqrstuvwxyz"
                + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789";
		
		Button verigonder = (Button) findViewById(R.id.button1);
		
		final TextView rastgele = (TextView)findViewById(R.id.textView1);
		
		 verigonder.setOnClickListener(new View.OnClickListener() {
             
	            public void onClick(View v) {
	            	

	            	Random rnd = new SecureRandom();
	                StringBuilder pass = new StringBuilder();
	                
	                for (int i = 0; i < 8; i++)
	                    pass.append(chars.charAt(rnd.nextInt(chars.length())));
	                rastgele.setText(pass.toString());
	            }
	        });
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
