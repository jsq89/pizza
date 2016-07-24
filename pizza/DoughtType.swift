//
//  DoughtType.swift
//  pizza
//
//  Created by Jesus Sanchez on 20/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class DoughtType: UIViewController {
    
    var miPizza : Pizza?
    
    @IBOutlet weak var btFina: UIButton!
    @IBOutlet weak var btCrujiente: UIButton!
    @IBOutlet weak var btGruesa: UIButton!
    
    @IBAction func setMasaFina(sender: AnyObject) {
        miPizza?.setDought(1)
        clearBts()
        btFina.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func setMasaCrujiente(sender: AnyObject) {
        miPizza?.setDought(2)
        clearBts()
        btCrujiente.setTitleColor(UIColor.redColor(), forState: .Normal)
    }
    
    @IBAction func setMasaGruesa(sender: AnyObject) {
        miPizza?.setDought(3)
        clearBts()
        btGruesa.setTitleColor(UIColor.redColor(), forState: .Normal)
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
        let nextView = segue.destinationViewController as! CheeseType
        nextView.miPizza = self.miPizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        clearBts()
        switch (miPizza!.getDought()){
        case 1:
            btFina.setTitleColor(UIColor.redColor(), forState: .Normal)
        case 2:
            btCrujiente.setTitleColor(UIColor.redColor(), forState: .Normal)
        case 3:
            btGruesa.setTitleColor(UIColor.redColor(), forState: .Normal)
        default:
            break
        }
    }
    
    func clearBts (){
        btFina.setTitleColor(UIColor.blueColor(), forState: .Normal)
        btCrujiente.setTitleColor(UIColor.blueColor(), forState: .Normal)
        btGruesa.setTitleColor(UIColor.blueColor(), forState: .Normal)
    }
}
