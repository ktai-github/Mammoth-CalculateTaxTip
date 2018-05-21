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
  
  @IBOutlet weak var labelSubTotal: NSTextField!
  
  @IBOutlet weak var labelTotalAfterTax: NSTextField!
  
  @IBOutlet weak var labelTipSlider: NSTextField!
  
  @IBOutlet weak var labelTip: NSTextField!
  
  @IBOutlet weak var labelTotalAfterTip: NSTextField!
  
  @IBOutlet weak var buttonCalculateTip: NSButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    
      labelSubTotalAmount.alignment = .right
    
      labelTotalAfterTaxAmount.alignment = .right
    
      labelTipAmount.alignment = .right
    
      labelTipAmount.floatValue = 0.00
    
      labelTotalAfterTipAmount.alignment = .right
    
      labelTotalAfterTipAmount.floatValue = 0.00
    
//    MARK: translatesAutoresizingMaskIntoConstraints
//    THIS IS SUPER IMPORTANT TO MAKE CONSTRAINTS WORK PROGRAMMATICALLY
//    =====================================================================
    labelSubTotal.translatesAutoresizingMaskIntoConstraints = false
    
    labelSubTotalAmount.translatesAutoresizingMaskIntoConstraints = false
    
    labelTotalAfterTax.translatesAutoresizingMaskIntoConstraints = false
    
    labelTotalAfterTaxAmount.translatesAutoresizingMaskIntoConstraints = false
    
    labelTipSlider.translatesAutoresizingMaskIntoConstraints = false
    
    sliderTipPercentage.translatesAutoresizingMaskIntoConstraints = false
    
    labelTip.translatesAutoresizingMaskIntoConstraints = false
    
    labelTipAmount.translatesAutoresizingMaskIntoConstraints = false
    
    labelTotalAfterTip.translatesAutoresizingMaskIntoConstraints = false
    
    labelTotalAfterTipAmount.translatesAutoresizingMaskIntoConstraints = false
    
    buttonCalculateTip.translatesAutoresizingMaskIntoConstraints = false
//    =====================================================================

//    MARK: labelSubTotal Constraints
    
    labelSubTotal.topAnchor.constraint(equalTo: labelSubTotalAmount.topAnchor, constant: 0).isActive = true
    
    labelSubTotal.topAnchor.constraint(equalTo: view.topAnchor, constant: 20.0).isActive = true
    
    labelSubTotal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
    labelSubTotal.bottomAnchor.constraint(equalTo: labelTotalAfterTax.topAnchor, constant: -10.0).isActive = true
    
//    MARK: labelTotalAfterTax Constraints
    
    labelTotalAfterTax.topAnchor.constraint(equalTo: labelTotalAfterTaxAmount.topAnchor, constant: 0).isActive = true
    
    labelTotalAfterTax.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
    labelTotalAfterTax.bottomAnchor.constraint(equalTo: labelTipSlider.topAnchor, constant: -15.0).isActive = true
    
//    MARK: labelTipSlider Constraints
    
    labelTipSlider.topAnchor.constraint(equalTo: sliderTipPercentage.topAnchor, constant: 0).isActive = true
    
    labelTipSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
    labelTipSlider.bottomAnchor.constraint(equalTo: labelTip.topAnchor, constant: -20.0).isActive = true
    
//    MARK: labelTip Constraints
    
    labelTip.topAnchor.constraint(equalTo: labelTipAmount.topAnchor, constant: 0).isActive = true
    
    labelTip.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
    labelTip.bottomAnchor.constraint(equalTo: labelTotalAfterTip.topAnchor, constant: -5.0).isActive = true
    
//    MARK: labelTotalAfterTip Constraints
    
    labelTotalAfterTip.topAnchor.constraint(equalTo: labelTotalAfterTipAmount.topAnchor, constant: 0).isActive = true
    
    labelTotalAfterTip.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
//    MARK: labelSubTotalAmount Constraint
    
    labelSubTotalAmount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
    
//    MARK: labelTotalAfterTaxAmount Constraint
    
    labelTotalAfterTaxAmount.trailingAnchor.constraint(equalTo: labelSubTotalAmount.trailingAnchor, constant: 0).isActive = true
    
//    MARK: sliderTipPercentage Constraints
    
    sliderTipPercentage.widthAnchor.constraint(equalToConstant: 162.0).isActive = true
    
    sliderTipPercentage.trailingAnchor.constraint(equalTo: labelSubTotalAmount.trailingAnchor, constant: 0).isActive = true
    
    sliderTipPercentage.bottomAnchor.constraint(equalTo: labelTipPercentage.topAnchor, constant: 0).isActive = true
    
//    MARK: labelTipPercentage Constraints
    
    labelTipPercentage.trailingAnchor.constraint(equalTo: labelSubTotalAmount.trailingAnchor, constant: 0).isActive = true
    
    labelTipPercentage.bottomAnchor.constraint(equalTo: labelTipAmount.topAnchor, constant: -10.0).isActive = true
    
//    MARK: labelTipAmount Constraint
    
    labelTipAmount.trailingAnchor.constraint(equalTo: labelSubTotalAmount.trailingAnchor, constant: 0).isActive = true
    
//    MARK: labelTotalAfterTipAmount Constraints
    
    labelTotalAfterTipAmount.trailingAnchor.constraint(equalTo: labelSubTotalAmount.trailingAnchor, constant: 0).isActive = true
    
    labelTotalAfterTipAmount.bottomAnchor.constraint(equalTo: buttonCalculateTip.topAnchor, constant: -20.0).isActive = true
    
//    MARK: buttonCalculateTip Constraints
    
    buttonCalculateTip.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
    
    buttonCalculateTip.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
    
    buttonCalculateTip.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.0).isActive = true
    
    }
  
  override func viewWillAppear() {
    
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
