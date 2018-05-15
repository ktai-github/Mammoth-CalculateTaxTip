//
//  TipViewController.swift
//  CalculateTaxTip
//
//  Created by KevinT on 2018-05-09.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

class TipViewController: NSViewController {

  @IBOutlet weak var labelSubTotalAmount: NSTextField!
  
  @IBOutlet weak var labelTotalAfterTaxAmount: NSTextField!
  
  @IBOutlet weak var sliderTipPercentage: NSSlider!
  
  @IBOutlet weak var labelTipPercentage: NSTextField!
  
  @IBOutlet weak var labelTipAmount: NSTextField!
  
  @IBOutlet weak var labelTotalAfterTipAmount: NSTextField!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    
      labelSubTotalAmount.alignment = .right
    
      labelTotalAfterTaxAmount.alignment = .right
    
      labelTipAmount.alignment = .right
    
      labelTipAmount.floatValue = 0.00
    
      labelTotalAfterTipAmount.alignment = .right
    
      labelTotalAfterTipAmount.floatValue = 0.00
    
    }
  
  override func viewDidAppear() {
    
    labelSubTotalAmount.stringValue = publicFormatter.string(from: publicSubTotalAmount)!
    
    labelTotalAfterTaxAmount.stringValue = publicFormatter.string(from: publicTotalAfterTax)!
    
  }
    
  @IBAction func calculateTipButtonClicked(_ sender: NSButton) {
  
    let intTipPercentage = sliderTipPercentage.intValue
    
    let floatTipAmount = publicSubTotalAmount.floatValue * Float(intTipPercentage) / 100
    
    let numberTipAmount = floatTipAmount as NSNumber  // used for formatting to currency
    
    labelTipAmount.stringValue = publicFormatter.string(from: numberTipAmount)!
    
    let numberTotalAmountAfterTip = (floatTipAmount + publicTotalAfterTax.floatValue) as NSNumber  //used for formatting to currency
    
    labelTotalAfterTipAmount.stringValue = publicFormatter.string(from: numberTotalAmountAfterTip)!
    
  }
  
  @IBAction func tipPercentageSliderChanged(_ sender: NSSlider) {
    
    labelTipPercentage.stringValue = String(sliderTipPercentage.intValue) + "%"
    
  }
  
}
