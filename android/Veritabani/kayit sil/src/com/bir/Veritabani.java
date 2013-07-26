package com.bir;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class Veritabani extends SQLiteOpenHelper{

	private static final String VERTABANI = "akinsoft";
	private static final int SURUM = 1;

	public Veritabani(Context con) {
	super (con, VERTABANI, null, SURUM);

	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL("CREATE TABLE rehber(id INTEGER PRIMARY KEY AUTOINCREMENT, ad TEXT, soyad TEXT, firma TEXT, numara TEXT, eposta TEXT);");

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

		db.execSQL("DROP TABLE IF EXIST ogrenciisim");
		onCreate(db);

	}

}