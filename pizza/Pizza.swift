//
//  Pizza.swift
//  pizza
//
//  Created by Jesus Sanchez on 20/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import Foundation

class Pizza {
    var size : Int
    var dought : Int
    var cheese : Int
    var ingredients : [String]?
    
    /*
    *   Default constructor
    */
    init (){
        self.size = -1
        self.dought = -1
        self.cheese = -1
        self.ingredients = nil
    }
    
    /*
    *   Constructor
    */
    init (size:Int, dought:Int, cheese:Int, ingredients:[String]){
        self.size=size
        self.dought=dought
        self.cheese=cheese
        self.ingredients=ingredients
    }
    
    
    /*
    *   Set the the size
    *   args :      Int size
    *   returns :   void
    */
    func setSize(size:Int){
        self.size=size
    }
    
    /*
    *   Set the the size
    *   args :      Int size
    *   returns :   void
    */
    func getSize()->Int{
        return self.size
    }
    
    /*
    *   Returns the String with the size
    *   args :      void
    *   returns :   String
    */
    func getStringSize()->String{
        let msg : String
        switch(self.size){
        case 1:
            msg = "Pequeña"
            break
        case 2:
            msg = "Mediana"
            break
        case 3:
            msg = "Grande"
            break
        default:
            msg = "Tipo desconocido"
            break
        }
        return msg
    }
    
    /*
    *   Set the the dought
    *   args :      Int dought
    *   returns :   void
    */
    func setDought(dought:Int){
        self.dought=dought
    }
    
    /*
    *   Get the the dought
    *   args :      void
    *   returns :   Int dought
    */
    func getDought()->Int{
        return self.dought
    }
    
    /*
    *   Returns the String with the dought type
    *   args :      void
    *   returns :   String
    */
    func getStringDought()->String{
        let msg : String
        switch(self.dought){
        case 1:
            msg = "Delgada"
            break
        case 2:
            msg = "Crujiente"
            break
        case 3:
            msg = "Gruesa"
            break
        default:
            msg = "Tipo desconocido"
            break
        }
        return msg
    }
    
    /*
    *   Set the the Cheese
    *   args :      Int cheese
    *   returns :   void
    */
    func setCheese(cheese:Int){
        self.cheese=cheese
    }
    
    /*
    *   Get the the Cheese
    *   args :      void
    *   returns :   Int cheese
    */
    func getCheese()->Int{
        return self.cheese
    }
    
    /*
    *   Returns the String with the Cheese type
    *   args :      void
    *   returns :   String cheese
    */
    func getStringCheese()->String{
        let msg : String
        switch(self.cheese){
        case 1:
            msg = "Mozarella"
            break
        case 2:
            msg = "Cheddar"
            break
        case 3:
            msg = "Parmesano"
            break
        case 4:
            msg = "Sin queso"
        default:
            msg = "Tipo desconocido"
            break
        }
        return msg
    }
    
    /*
    *   Add an ingredient
    *   args :      String
    *   returns :   void
    */
    func addIngredient(ingredient:String){
        if (ingredients == nil){
            self.ingredients = [ingredient]
        }else{
            self.ingredients?.insert(ingredient, atIndex: 0)
        }
    }
    
    /*
    *   Add an ingredient
    *   args :      void
    *   returns :   [String]?
    */
    func getIngredientsArray()->[String]?{
        return self.ingredients
    }
    
    /*
    *   Remove an ingredient
    *   args :      String
    *   returns :   void
    */
    func removeIngredient(ingredient:String){
        let index : Int = (self.ingredients?.indexOf(ingredient))!
        ingredients?.removeAtIndex(index)
    }
    
    /*
    *   Returns if an ingredient is in the list
    *   args :      String
    *   returns :   boolean
    */
    func checkIngredient(ingredient:String)->Bool{
        let index : Int? = self.ingredients!.indexOf(ingredient)
        return index >= 0
    }
    
    /*
    *   Return the string with the ingredients
    *   args :      void
    *   returns :   String
    */
    func getIngredients()->String{
        var ingredientList = ""
        if ((ingredients != nil) && (self.ingredients?.count > 0)){
            for i in 0 ... ((self.ingredients?.count)!-1){
                ingredientList=ingredientList + (self.ingredients?[i])! + "\n"
            }
        }
        return ingredientList
    }
    
    
}