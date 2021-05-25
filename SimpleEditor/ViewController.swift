//
//  ViewController.swift
//  SimpleEditor
//
//  Created by Mohammed Alqumairi on 25/05/2021.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Populate the textview with three paragraphs
        guard let textStorage: NSTextStorage = textView.textStorage else { return }
        insertText(textStorage: textStorage)
        
        //🚫 Tried below, no difference!
        //textView.nextKeyView = nil
        //textView.nextResponder = nil

    }
    
    func insertText(textStorage: NSTextStorage) {
        //Insert first line of regular text
        var attributes: [NSAttributedString.Key: Any] = [
            .font: NSFont.systemFont(ofSize: 24),
            .foregroundColor: NSColor.textColor,
            .backgroundColor: NSColor.clear
        ]
        let attributedString1: NSAttributedString = NSAttributedString(string: "Test\n", attributes: attributes)
        textStorage.append(attributedString1)
        
        //Insert the blue block holdig text
        attributes[.foregroundColor] = NSColor.white
        attributes[.paragraphStyle] = ParagraphStyle(bgColor: NSColor.systemBlue).paragraphStyle
        let attributedBlock1 = NSAttributedString(string: "Hello, I'm the blue block\n", attributes: attributes)
        textStorage.append(attributedBlock1)

        //Insert the pink block holdig text
        attributes[.foregroundColor] = NSColor.black
        attributes[.paragraphStyle] = ParagraphStyle(bgColor: NSColor.systemPink).paragraphStyle
        let attributedBlock2 = NSAttributedString(string: "Hello, I'm the pink block\n", attributes: attributes)
        textStorage.append(attributedBlock2)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

