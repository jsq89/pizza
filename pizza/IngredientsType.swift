//
//  IngredientsType.swift
//  pizza
//
//  Created by Jesus Sanchez on 23/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class IngredientsType: UIViewController {
    var miPizza : Pizza?
    
    var cont1 : Int = -1
    var cont2 : Int = -1
    var cont3 : Int = -1
    var cont4 : Int = -1
    var cont5 : Int = -1
    var cont6 : Int = -1
    var cont7 : Int = -1
    var cont8 : Int = -1
    var cont9 : Int = -1
    var cont10 : Int = -1
    var numIngredients : Int = 0
    
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var pepperoni: UIButton!
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var aceitunas: UIButton!
    @IBOutlet weak var pimientos: UIButton!
    @IBOutlet weak var pina: UIButton!
    @IBOutlet weak var anchoa: UIButton!
    @IBOutlet weak var exQueso: UIButton!
    
    @IBOutlet weak var numOfElements: UILabel!
    
    @IBAction func addJamon(sender: AnyObject) {
        if (cont1<0){
            miPizza?.addIngredient("Jamon")
            jamon.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont1 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Jamon")
            jamon.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont1 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addPepperoni(sender: AnyObject) {
        if (cont2<0){
            miPizza?.addIngredient("Pepperoni")
            pepperoni.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont2 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Pepperoni")
            pepperoni.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont2 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addPavo(sender: AnyObject) {
        if (cont3<0){
            miPizza?.addIngredient("Pavo")
            pavo.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont3 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Pavo")
            pavo.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont3 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addSalchicha(sender: AnyObject) {
        if (cont4<0){
            miPizza?.addIngredient("Salchicha")
            salchicha.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont4 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Salchicha")
            salchicha.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont4 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addAceituna(sender: AnyObject) {
        if (cont5<0){
            miPizza?.addIngredient("Aceitunas")
            aceitunas.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont5 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Aceitunas")
            aceitunas.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont5 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addCebolla(sender: AnyObject) {
        if (cont6<0){
            miPizza?.addIngredient("Cebolla")
            cebolla.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont6 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Cebolla")
            cebolla.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont6 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addPimiento(sender: AnyObject) {
        if (cont7<0){
            miPizza?.addIngredient("Pimiento")
            pimientos.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont7 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Pimiento")
            pimientos.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont7 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addPina(sender: AnyObject) {
        if (cont8<0){
            miPizza?.addIngredient("Piña")
            pina.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont8 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Piña")
            pina.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont8 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addAnchoa(sender: AnyObject) {
        if (cont9<0){
            miPizza?.addIngredient("Anchoa")
            anchoa.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont9 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Anchoa")
            anchoa.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont9 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func addQueso(sender: AnyObject) {
        if (cont10<0){
            miPizza?.addIngredient("Extra de Queso")
            exQueso.setTitleColor(UIColor.redColor(), forState: .Normal)
            cont10 *= -1
            numIngredients++
            textUpdate()
        }else{
            miPizza?.removeIngredient("Extra de Queso")
            exQueso.setTitleColor(UIColor.blueColor(), forState: .Normal)
            cont10 *= -1
            numIngredients--
            textUpdate()
        }
    }
    
    @IBAction func nextStep(sender: AnyObject) {
        print(miPizza?.getIngredients())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (miPizza == nil){
            miPizza = Pizza()
        }
        textUpdate()
        
        cont1 = -1
        cont2 = -1
        cont3 = -1
        cont4 = -1
        cont5 = -1
        cont6 = -1
        cont7 = -1
        cont8 = -1
        cont9 = -1
        cont10 = -1
        
        numIngredients = 0
        
        jamon.setTitleColor(UIColor.blueColor(), forState: .Normal)
        pepperoni.setTitleColor(UIColor.blueColor(), forState: .Normal)
        pavo.setTitleColor(UIColor.blueColor(), forState: .Normal)
        salchicha.setTitleColor(UIColor.blueColor(), forState: .Normal)
        cebolla.setTitleColor(UIColor.blueColor(), forState: .Normal)
        aceitunas.setTitleColor(UIColor.blueColor(), forState: .Normal)
        pimientos.setTitleColor(UIColor.blueColor(), forState: .Normal)
        pina.setTitleColor(UIColor.blueColor(), forState: .Normal)
        anchoa.setTitleColor(UIColor.blueColor(), forState: .Normal)
        exQueso.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ReviewPage
        nextView.miPizza = self.miPizza
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textUpdate(){
        numOfElements.text = "Llevas \(numIngredients) ingredientes"
    }
    
    override func viewDidAppear(animated: Bool) {
        numIngredients = 0
        cont1 = -1
        cont2 = -1
        cont3 = -1
        cont4 = -1
        cont5 = -1
        cont6 = -1
        cont7 = -1
        cont8 = -1
        cont9 = -1
        cont10 = -1
        
        if (miPizza!.getIngredientsArray() != nil){
            if (miPizza!.checkIngredient("Jamon")){
                jamon.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont1 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Pepperoni")){
                pepperoni.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont2 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Pavo")){
                pavo.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont3 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Salchicha")){
                salchicha.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont4 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Aceitunas")){
                aceitunas.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont5 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Cebolla")){
                cebolla.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont6 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Pimiento")){
                pimientos.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont7 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Piña")){
                pina.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont8 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Anchoa")){
                anchoa.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont9 *= -1
                numIngredients++
            }
            if (miPizza!.checkIngredient("Extra de Queso")){
                exQueso.setTitleColor(UIColor.redColor(), forState: .Normal)
                cont10 *= -1
                numIngredients++
            }
            textUpdate()
        }
    }
}
