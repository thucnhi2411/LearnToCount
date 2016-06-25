//
//  ViewController.swift
//  LearnToCount
//
//  Created by THUC NHI on 6/23/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result: String = ""
    var numberArray = [String]()
    var countArray = [String]()
    var i : String = ""
    var a: Int = 0
    var b: Int = 0
          @IBOutlet weak var numberBar: UILabel!
   
    @IBOutlet weak var countBar: UILabel!
   
    @IBAction func delButton(sender: UIButton) {
        let name: String = numberBar.text!
        let truncated = String(name.characters.dropLast())
        numberBar.text = truncated
        numberArray.removeLast()
        countArray.removeLast()
         a = countArray.count
        
    }
    
    @IBAction func clearButton(sender: UIButton) {
        numberBar.text = "0"
        numberArray = [String]()
        countArray = [String]()
        countBar.text = ""
    }
    @IBAction func numberButton(sender: UIButton) {
      
    //Add the number to the numberBar
        
        if numberBar.text == "0" {
            numberBar.text = sender.currentTitle
        }
        else {
           numberBar.text = numberBar.text! + sender.currentTitle!
           
        }
        numberArray.append(sender.currentTitle!)
        i = sender.currentTitle!
        
    //Set the single number
        if i == "0" { countArray.append("Không")
            }
        if i == "1" { countArray.append("Một")
            }
        if i == "2" { countArray.append("Hai")
            }
        if i == "3" { countArray.append("Ba")
            }
        if i == "4" { countArray.append("Bốn")
            }
        if i == "5" { countArray.append("Năm")
            }
        if i == "6" { countArray.append("Sáu")
            }
        if i == "7" { countArray.append("Bảy")
            }
        if i == "8" { countArray.append("Tám")
            }
        if i == "9" { countArray.append("Chín")
            }
       b = b + 1
    }
    
    @IBAction func countButton(sender: UIButton) {
      
        a = countArray.count
        
        if a == 1 {
            countBar.text = "\(countArray)" }
        
        if a == 2 {
            if numberBar.text == "10" { countBar.text = "Mười" }            //10
            else {
                if numberArray[a-2] == "1" { if numberArray[a-1] == "5" {
                    countBar.text = "Mười Lăm"                              //15
                    }
                else {countBar.text = "Mười \(countArray[a-1])" }         //12
                }
                else {
                    if numberArray[a-1] == "0" {
                        countBar.text = "\(countArray[a-2]) Mươi"           //20
                    }
                    else { if numberArray[a-1] == "5" {
                        countBar.text = "\(countArray[a-2]) Mươi Lăm" }     //25
                    else {
                        if numberArray[a-1] == "1" {
                            countBar.text = "\(countArray[a-2]) Mươi Mốt"
                        }
                        else {
                            countBar.text = "\(countArray[a-2]) Mươi \(countArray[a-1])" } }      //52
                        }
                    
                }
            }
        }
       
        if a == 3 {
            if numberArray[a-2] == "0" && numberArray[a-1] == "0" { countBar.text = "\(countArray[a-3]) Trăm" }       //200
            else { if numberArray[a-2] == "0" { countBar.text = "\(countArray[a-3]) Trăm Lẻ \(countArray[a-1])" }
            else {if numberArray[a-2] == "1" { if numberArray[a-1] == "5" {
                countBar.text = "\(countArray[a-3]) Trăm Mười Lăm"                              //115
            }
            else {countBar.text = "\(countArray[a-3]) Trăm Mười \(countArray[a-1])" }         //312
            }
            else {
            if numberArray[a-1] == "0" {
                countBar.text = "\(countArray[a-3]) Trăm \(countArray[a-2]) Mươi"           //220
            }
            else { if numberArray[a-1] == "5" {
                countBar.text = "\(countArray[a-3]) Trăm \(countArray[a-2]) Mươi Lăm" }     //225
                else
                if numberArray[a-1] == "1" {
                    countBar.text = "\(countArray[a-3]) Trăm \(countArray[a-2]) Mươi Mốt"
                }
                else {
                    countBar.text = "\(countArray[a-3]) Trăm \(countArray[a-2]) Mươi \(countArray[a-1])" } }      //352
            
                }
                } }
    
        }

        
        if a == 4 {
            if numberArray[a-3] == "0" && numberArray[a-2] == "0" && numberArray[a-1] == "0" {countBar.text = "\(countArray[a-4]) Nghìn" }
                else { if numberArray[a-2] == "0" && numberArray[a-1] == "0" { countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm" }       //2000
            else { if numberArray[a-2] == "0" { countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm Lẻ \(countArray[a-1])" }     //2104
            else {if numberArray[a-2] == "1" { if numberArray[a-1] == "5" {
                countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm Mười Lăm"                              //2115
                }
            else {countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm Mười \(countArray[a-1])" }         //4312
            }
            else {
                if numberArray[a-1] == "0" {
                    countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm \(countArray[a-2]) Mươi"           //2220
                }
                else { if numberArray[a-1] == "5" {
                    countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm \(countArray[a-2]) Mươi Lăm" }     //225
                else
                    if numberArray[a-1] == "1" {
                        countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm \(countArray[a-2]) Mươi Mốt"
                    }
                    else {
                        countBar.text = "\(countArray[a-4]) Nghìn \(countArray[a-3]) Trăm \(countArray[a-2]) Mươi \(countArray[a-1])" }      //35
                } }
                }
                }
            }
        }
        
        if a > 4 {
            countBar.text = "Well Learning! Try to review the previous lesson!"
    }
    
    }
    
}