//
//  WindowController.swift
//  myclock
//
//  Created by administrator on 2018/05/23.
//  Copyright © 2018年 administrator. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        window?.isOpaque = false
        window?.backgroundColor = NSColor(white: 1, alpha: 0)

        window?.isMovableByWindowBackground = true
        window?.titlebarAppearsTransparent = true
        window?.titleVisibility = .hidden
        window?.styleMask = .fullSizeContentView
        
        window?.hasShadow = false
        
        window?.level = .floating
        
    }
}
