package com.amaralzaao.sayno

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class YourReports : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_your_reports)

        val btn = findViewById<Button>(R.id.newBtn)
        btn.setOnClickListener {
            val intent = Intent(this,NewReport::class.java)
            startActivity(intent)
        }
    }

}