package com.android9;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		final CheckBox checkbox1 = (CheckBox) findViewById(R.id.checkBox1);
		
		Button buton1 = (Button) findViewById(R.id.button1);
		
		buton1.setOnClickListener(new View.OnClickListener() {
		
			public void onClick(View v) {
				
				if (checkbox1.isChecked()) {
					startActivity(new Intent("android.intent.action.EKRANIKI"));
				}
				
				
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
