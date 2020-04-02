package com.flutter.appandroid

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.FragmentActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragment
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : FragmentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        btn_to_flutter_activity.setOnClickListener {
            //            startActivity(FlutterActivity.createDefaultIntent(this))
            startActivity(
//                FlutterActivity
//                    .withNewEngine()
//                    .initialRoute("page_1")
//                    .build(this)
                FlutterActivity
                    .withCachedEngine("engine_id")
                    .build(this)
            )
        }
        var fragment = FlutterFragment
            .withCachedEngine("engine_id")
            .build<FlutterFragment>()
//        var fragment: FlutterFragment = FlutterFragment.createDefault()
//
//        supportFragmentManager.beginTransaction()
//            .add(R.id.fragment_container, fragment, "")
//            .commitAllowingStateLoss()
        btn_to_channel_activity.setOnClickListener { startActivity(Intent(this,ChannelActivity::class.java)) }
    }
}
