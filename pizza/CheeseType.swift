//
//  CheeseType.swift
//  pizza
//
//  Created by Jesus Sanchez on 23/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class CheeseType: UIViewController {

    var miPizza : Pizza?
    
    @IBOutlet weak var btMozarela: UIButton!
    @IBOutlet weak var btCheddar: UIButton!
    @IBOutlet weak var btParmesano: UIButton!
    @IBOutlet weak var btSinQueso: UIButton!
    
    @IBAction func setCheeseMozarela(sender: AnyObject) {
        miPizza?.setCheese(1)
        print("Queso de tipo \(miPizza!.getStringCheese())")
        clearBts()
        btMozarela.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func setCheeseCheddar(sender: AnyObject) {
        miPizza?.setCheese(2)
        print("Queso de tipo \(miPizza!.getStringCheese())")
        clearBts()
        btCheddar.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func setCheeseParmesano(sender: AnyObject) {
        miPizza?.setCheese(3)
        print("Queso de tipo \(miPizza!.getStringCheese())")
        clearBts()
        btParmesano.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func setNoCheese(sender: AnyObject) {
        miPizza?.setCheese(4)
        print("Queso de tipo \(miPizza!.getStringCheese())")
        clearBts()
        btSinQueso.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func nextStep(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearBts()
        if (miPizza == nil){
            miPizza = Pizza()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! IngredientsType
        nextView.miPizza = self.miPizza
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        clearBts()
        switch (miPizza!.getCheese()){
        case 1:
            btMozarela.setTitleColor(UIColor.redColor(), forState: .Normal)
        case 2:
            btCheddar.setTitleColor(UIColor.redColor(), forState: .Normal)
        case 3:
            btParmesano.setTitleColor(UIColor.redColor(), forState: .Normal)
        case 4:
            btSinQueso.setTitleColor(UIColor.redColor(), forState: .Normal)
        default:
            break
        }
    }
    
    func clearBts (){
        btMozarela.setTitleColor(UIColor.blueColor(), forState: .Normal)
        btCheddar.setTitleColor(UIColor.blueColor(), forState: .Normal)
        btParmesano.setTitleColor(UIColor.blueColor(), forState: .Normal)
        btSinQueso.setTitleColor(UIColor.blueColor(), forState: .Normal)
    }

}
