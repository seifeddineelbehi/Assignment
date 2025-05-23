package com.rakuten.assignment

import android.accessibilityservice.AccessibilityService
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.util.Log

class CallEndAccessibilityService : AccessibilityService() {

    companion object {
        var instance: CallEndAccessibilityService? = null
    }

    override fun onServiceConnected() {
        super.onServiceConnected()
        instance = this
        Log.d("CallEndService", "Accessibility Service Connected")
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        // Optional: Listen for call screen changes
    }

    override fun onInterrupt() {
        Log.d("CallEndService", "Accessibility Service Interrupted")
    }

    fun endCall(): Boolean {
        val rootNode = rootInActiveWindow ?: return false
        return findAndClickEndCall(rootNode)
    }

    private fun findAndClickEndCall(node: AccessibilityNodeInfo?): Boolean {
        if (node == null) return false

        if (
            node.text?.toString()?.equals("End call", true) == true ||
            node.contentDescription?.toString()?.contains("End call", true) == true
        ) {
            return node.performAction(AccessibilityNodeInfo.ACTION_CLICK)
        }

        for (i in 0 until node.childCount) {
            if (findAndClickEndCall(node.getChild(i))) return true
        }

        return false
    }
}