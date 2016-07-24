//
//  ConfirmationScrren.swift
//  pizza
//
//  Created by Jesus Sanchez on 24/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class ConfirmationScrren: UIViewController {

    @IBOutlet weak var msg: UILabel!
    
    var canConfirm : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkConfirmation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        checkConfirmation()
    }
    
    func checkConfirmation(){
        if (canConfirm){
            msg.text="Enhorabuena, su pizza está preparandose!"
        }else{
            msg.text="Ups, algo ha ido mal. Revise su pizza en la pantalla anterior!"
        }
    }
}
