//
//  ViewController.swift
//  CalculadoraIOS
//
//  Created by Omar on 30/04/17.
//  Copyright © 2017 YACO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var NumberOnScreen:Double = 0;
    var PreviousNumer:Double = 0;
    var flag = false
    var operation = 0;
    
    @IBOutlet var label: UILabel!
    
    @IBAction func buttons(sender: UIButton)
        
    {
        
        if flag == true
        {
            label.text = String(sender.tag-1)
            NumberOnScreen = Double(label.text!)!
            flag = false
        }
            
        
        else {
        
        label.text = label.text! + String (sender.tag-1)
        NumberOnScreen = Double (label.text!)!
    }
}
    
    @IBAction func actions(sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            
            PreviousNumer = Double(label.text!)!
            
            	if sender.tag == 12 //División
                {
                    label.text = "/";
                }
            
                else if sender.tag == 13 //Multiplicación
                {
                    label.text = "*";
                }

                else if sender.tag == 14 //Resta
                    
                {
                    label.text = "-";
                }
            
                else if sender.tag == 15 //Suma
                {
                    label.text = "+";
                }
            
            operation = sender.tag
            flag = true;
        }
            
        
        else if sender.tag == 16
        {
                if operation == 12
                {
                    label.text = String (PreviousNumer / NumberOnScreen)
                    
                }
            else if operation == 13
            {
                
                label.text = String (PreviousNumer * NumberOnScreen)
            }

            else if operation == 14
            {
                label.text = String (PreviousNumer - NumberOnScreen)
                
            }

           else if operation == 15
            {
                label.text = String (PreviousNumer + NumberOnScreen)
                
            }

        }
            
            
        else if sender.tag == 17 //Suma
        {
            label.text = label.text! + String (".");
        }
            

        else if sender.tag == 11
        {
            
            label.text = "";
            operation = 0;
            PreviousNumer = 0;
            NumberOnScreen = 0;
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

