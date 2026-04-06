package com.peresmeshnik.native_vpn_plugin

import android.content.Context
import android.content.Intent
import android.net.VpnService
import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class NativeVpnPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    companion object {
        private const val TAG = "NativeVpnPlugin"
        private const val CHANNEL = "native_vpn_plugin"
        private const val VPN_REQUEST_CODE = 1001
    }

    private lateinit var channel: MethodChannel
    private var context: Context? = null
    private var activityBinding: ActivityPluginBinding? = null
    private var pendingResult: Result? = null
    private var pendingConfig: String? = null
    private var pendingPackages: List<String>? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        context = binding.applicationContext
        channel = MethodChannel(binding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        context = null
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "start" -> {
                val config = call.argument<String>("config") ?: ""
                val allowedPackages = call.argument<List<String>>("allowedPackages")
                startVpn(config, allowedPackages, result)
            }
            "stop" -> {
                stopVpn(result)
            }
            "isRunning" -> {
                result.success(isVpnRunning())
            }
            else -> result.notImplemented()
        }
    }

    private fun startVpn(config: String, allowedPackages: List<String>?, result: Result) {
        Log.i(TAG, "startVpn() called")
        
        val intent = VpnService.prepare(context)
        if (intent != null) {
            pendingResult = result
            pendingConfig = config
            pendingPackages = allowedPackages
            activityBinding?.activity?.startActivityForResult(intent, VPN_REQUEST_CODE)
        } else {
            startVpnWithPermission(config, allowedPackages, result)
        }
    }

    private fun startVpnWithPermission(config: String, allowedPackages: List<String>?, result: Result) {
        // TODO: Implement actual VPN connection with config
        // For now, just simulate success
        Log.i(TAG, "VPN started with config: $config, allowed: $allowedPackages")
        result.success(true)
    }

    private fun stopVpn(result: Result) {
        Log.i(TAG, "stopVpn() called")
        // TODO: Implement VPN stop
        result.success(true)
    }

    private fun isVpnRunning(): Boolean {
        // TODO: Implement check
        return false
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activityBinding = binding
        binding.addActivityResultListener { requestCode, resultCode, data ->
            if (requestCode == VPN_REQUEST_CODE) {
                if (resultCode == android.app.Activity.RESULT_OK) {
                    startVpnWithPermission(pendingConfig ?: "", pendingPackages, pendingResult!!)
                } else {
                    pendingResult?.error("PERMISSION_DENIED", "VPN permission denied", null)
                }
                pendingResult = null
                pendingConfig = null
                pendingPackages = null
                true
            } else {
                false
            }
        }
    }

    override fun onDetachedFromActivity() {
        activityBinding = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }
}