//
//  TaxViewController.swift
//  CalculateTaxTip
//
//  Created by KevinT on 2018-05-08.
//  Copyright © 2018 Mammoth Interactive. All rights reserved.
//

import Cocoa

var publicSubTotalAmount: NSNumber = 0.00
var publicTotalAfterTax: NSNumber = 0.00
let publicFormatter = NumberFormatter()

class TaxViewController: NSViewController {
  
  @IBOutlet weak var textFieldSubTotal: NSTextField!
  @IBOutlet weak var textFieldTaxRate: NSTextField!
  @IBOutlet weak var labelTaxAmount: NSTextField!
  @IBOutlet weak var labelTotalAfterTax: NSTextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
      textFieldSubTotal.alignment = NSTextAlignment.right
      textFieldSubTotal.floatValue = 0.00
      
      textFieldTaxRate.alignment = NSTextAlignment.right
      textFieldTaxRate.floatValue = 5.00
      
      labelTaxAmount.alignment = NSTextAlignment.right
      labelTaxAmount.stringValue = "$" + String(format: "%.2f", 0.00)
      
      labelTotalAfterTax.alignment = NSTextAlignment.right
      labelTotalAfterTax.stringValue = "$" + String(format: "%.2f", 0.00)
    }
    
  @IBAction func calculateTaxButtonClicked(_ sender: NSButton) {
    
    publicSubTotalAmount = textFieldSubTotal.floatValue as NSNumber  // used for formatting
    
    let floatSubTotalAmount = textFieldSubTotal.floatValue
    
    let floatTaxRate = textFieldTaxRate.floatValue
    
    let floatTaxAmount = floatSubTotalAmount * floatTaxRate / 100
    
    let numberTaxAmount = floatTaxAmount as NSNumber  // used for formatting
    
    publicFormatter.numberStyle = NumberFormatter.Style.currency
    
    labelTaxAmount.stringValue = publicFormatter.string(from: numberTaxAmount)!
    
    let numberTotalAfterTaxAmount = (floatTaxAmount + floatSubTotalAmount) as NSNumber  // used for formatting
    
    publicTotalAfterTax = numberTotalAfterTaxAmount
    
    labelTotalAfterTax.stringValue = publicFormatter.string(from: numberTotalAfterTaxAmount)!
    
    
    
  }
}
