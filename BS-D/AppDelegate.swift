//
//  AppDelegate.swift
//  BS-D
//
//  Created by German Velibekov on 18/08/2024.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var statusItem: NSStatusItem!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        // Set the text that you want to display
        statusItem.button?.title = "בס״ד"
        
        let menu = NSMenu()
        // Quit option
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(quitClicked), keyEquivalent: "q"))
        
        // Assign the menu to the status item
        statusItem.menu = menu
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    @objc func quitClicked() {
        // Quit the application
        NSApplication.shared.terminate(self)
    }
}

