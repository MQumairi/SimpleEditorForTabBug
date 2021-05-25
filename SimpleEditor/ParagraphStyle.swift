//
//  CustomParagraphStyle.swift
//  SimpleEditor
//
//  Created by Mohammed Alqumairi on 25/05/2021.
//

import AppKit

class ParagraphStyle {
    
    let bgColor: NSColor
    let paragraphStyle: NSParagraphStyle
    
    init(bgColor: NSColor) {
        self.bgColor = bgColor
        //Set paragraph style
        self.paragraphStyle = {
            let mutableParagraphStyle = NSMutableParagraphStyle()
            let specialBlock = CustomTextBlock(bgColor: bgColor)
            mutableParagraphStyle.textBlocks.append(specialBlock)
            //🚫 Tried all of below, no difference!
            //mutableParagraphStyle.tabStops = [NSTextTab(type: .leftTabStopType, location: 5)]
            //mutableParagraphStyle.addTabStop(NSTextTab(type: .leftTabStopType, location: 5))
            //mutableParagraphStyle.defaultTabInterval = 5
            let style = mutableParagraphStyle as NSParagraphStyle
            return style
        }()
    }
}
