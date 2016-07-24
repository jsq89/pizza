//
//  ReviewPage.swift
//  pizza
//
//  Created by Jesus Sanchez on 24/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class ReviewPage: UIViewController {
    var miPizza : Pizza?
    
    @IBOutlet weak var tamanoPizza: UILabel!
    @IBOutlet weak var tipoMasa: UILabel!
    @IBOutlet weak var tipoQueso: UILabel!
    
    @IBOutlet weak var ingredientes: UILabel!
    
    var canConfirm : Bool = false
    
    @IBAction func confirm(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (miPizza == nil){
            miPizza = Pizza()
        }
        checkPizza()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textUpdate(){
        
    }
    
    func checkPizza(){
        if(miPizza != nil){
            tamanoPizza.text=miPizza?.getStringSize()
            tipoMasa.text=miPizza?.getStringDought()
            tipoQueso.text=miPizza?.getStringCheese()
            if(miPizza?.getSize() == 0 || miPizza?.getDought() == 0 || miPizza?.getCheese() == 0){
                canConfirm = false
            }else{
                canConfirm = true
            }
            if(miPizza?.getIngredientsArray() != nil){
                if((miPizza?.getIngredientsArray()?.count < 1) || (miPizza?.getIngredientsArray()?.count > 5)){
                    if(miPizza?.getIngredientsArray()?.count > 5){
                        ingredientes.text="Demasiados ingredientes"
                    }else{
                        ingredientes.text="Ningún ingrediente"
                    }
                    canConfirm = false
                }else{
                    ingredientes.text=miPizza?.getIngredients()
                    canConfirm = true
                }
            }else{
                ingredientes.text="Ningún ingrediente"
                canConfirm = false
            }
        }
    }
    override func viewDidAppear(animated: Bool) {
        checkPizza()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ConfirmationScrren
        nextView.canConfirm = canConfirm
    }
    
}
