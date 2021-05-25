//
//  CustomTextBlock.swift
//  SimpleEditor
//
//  Created by Mohammed Alqumairi on 25/05/2021.
//

import AppKit

class CustomTextBlock: NSTextBlock {
            
    init(bgColor: NSColor) {
        super.init()
        //Control the BG color of the text block
        self.backgroundColor = bgColor
        //Control dimensions of the text block
        self.setValue(100, type: NSTextBlock.ValueType.percentageValueType, for: NSTextBlock.Dimension.width)
        self.setValue(50, type: NSTextBlock.ValueType.absoluteValueType, for: NSTextBlock.Dimension.minimumHeight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
