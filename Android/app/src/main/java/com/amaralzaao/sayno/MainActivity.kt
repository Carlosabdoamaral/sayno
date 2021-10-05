package com.amaralzaao.sayno

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.amaralzaao.sayno.R.layout.activity_main
import com.amaralzaao.sayno.R.layout.activity_new_report

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(activity_new_report)
    }

}