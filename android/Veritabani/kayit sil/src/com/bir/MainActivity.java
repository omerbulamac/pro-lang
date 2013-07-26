package com.bir;

import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends Activity {

	private Veritabani akinsoft;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        
        
        
        
        
        
        
        akinsoft = new Veritabani(this);
        final EditText ad=(EditText) findViewById(R.id.editText1);
        final EditText soyad=(EditText) findViewById(R.id.editText2);
        final EditText firma=(EditText) findViewById(R.id.editText3);
        final EditText numara=(EditText) findViewById(R.id.editText4);
        final EditText eposta=(EditText) findViewById(R.id.editText5);
        
        Button sil = (Button) findViewById(R.id.button1);
         
        sil.setOnClickListener(new View.OnClickListener() {
             
            public void onClick(View v) {
                    try{
                     Kayitsil(ad.getText().toString());
                     Cursor cursor = KayitGetir();
                     KayitGoster(cursor);
                     }
                     finally{
                    akinsoft.close();
                    }
                 
            }
        });
         
    }
 
     
     private void Kayitsil(String ad){
      
     SQLiteDatabase db = akinsoft.getReadableDatabase();
     db.delete("rehber","ad"+"=?", new String[] { ad });
     
     
     }
      
     private String[] SELECT = {"id", "ad", "soyad", "firma", "numara", "eposta"};
      
     private Cursor KayitGetir(){
     SQLiteDatabase db = akinsoft.getReadableDatabase();
     Cursor cursor = db.query("rehber", SELECT, null, null, null, null, null);
 
     startManagingCursor(cursor);
     return cursor;
     }
      
     private void KayitGoster(Cursor cursor){
         StringBuilder builder = new StringBuilder("Kayitlar:\n");
          
         while(cursor.moveToNext()){
          
         long id = cursor.getLong(cursor.getColumnIndex("id"));
         String ad = cursor.getString((cursor.getColumnIndex("ad")));
         String soyad = cursor.getString((cursor.getColumnIndex("soyad")));
         String firma = cursor.getString((cursor.getColumnIndex("firma")));
         String numara = cursor.getString((cursor.getColumnIndex("numara")));
         String eposta = cursor.getString((cursor.getColumnIndex("eposta")));

         builder.append(id).append("\nAd: ");
         builder.append(ad).append("\nSoyad: ");
         builder.append(soyad).append("\nfirma");
         builder.append(firma).append("\nnumara");
         builder.append(numara).append("\neposta");
         builder.append(eposta).append("\n\n");
         
         }
          
         TextView text = (TextView)findViewById(R.id.textView1);
         text.setText(builder);
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
    
}
