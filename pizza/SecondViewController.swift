//
//  SecondViewController.swift
//  pizza
//
//  Created by Jesus Sanchez on 20/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var miPizza : Pizza? = Pizza()
    
    @IBAction func printPizza(sender: AnyObject) {
        if(miPizza != nil){
            print(miPizza!.getStringSize())
        }else{
            print("Uppppps algo ha ido mal")
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
    
    func setPizza (pizza : Pizza){
        self.miPizza = pizza
    }

}

