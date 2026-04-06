package com.peresmeshnik.native_vpn_plugin

import android.net.VpnService
import android.os.ParcelFileDescriptor
import android.util.Log

class VpnService : VpnService() {
    companion object {
        private const val TAG = "NativeVpnService"
        private var vpnInterface: ParcelFileDescriptor? = null
        
        fun start(config: String, allowedPackages: List<String>?): Boolean {
            return try {
                val builder = Builder()
                builder.setSession("Пересмешник")
                builder.addAddress("10.0.0.1", 32)
                builder.addRoute("0.0.0.0", 0)
                
                if (!allowedPackages.isNullOrEmpty()) {
                    builder.setAllowedApplications(allowedPackages)
                }
                
                vpnInterface = builder.establish()
                true
            } catch (e: Exception) {
                Log.e(TAG, "Failed to start VPN", e)
                false
            }
        }
        
        fun stop() {
            try {
                vpnInterface?.close()
                vpnInterface = null
            } catch (e: Exception) {
                Log.e(TAG, "Error stopping VPN", e)
            }
        }
        
        fun isRunning(): Boolean = vpnInterface != null
    }
}