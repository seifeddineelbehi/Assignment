package com.rakuten.assignment
import com.rakuten.assignment.CallEndAccessibilityService
import android.content.Context
import android.content.Intent
import android.provider.Settings
import android.os.Build
import android.net.TrafficStats
import android.telecom.TelecomManager
import android.util.Log
import android.telephony.PhoneStateListener
import android.telephony.TelephonyManager
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.EventChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.rakuten.dataUsage"
    override fun configureFlutterEngine(flutterEngine: io.flutter.embedding.engine.FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == "getMobileDataUsage") {
                val rxBytes = TrafficStats.getMobileRxBytes()
                val txBytes = TrafficStats.getMobileTxBytes()
                val total = rxBytes + txBytes
                result.success(total.toInt())
            }else if (call.method == "triggerEndCall") {
                val success = CallEndAccessibilityService.instance?.endCall() ?: false
                result.success(true)
            }else if (call.method == "openAccessibilitySettings") {
                startActivity(Intent(android.provider.Settings.ACTION_ACCESSIBILITY_SETTINGS))
                result.success(true)
            }else {
                result.notImplemented()
            }
        }
    }
}
