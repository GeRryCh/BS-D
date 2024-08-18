//
//  main.swift
//  BS-D
//
//  Created by German Velibekov on 18/08/2024.
//

import AppKit

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
