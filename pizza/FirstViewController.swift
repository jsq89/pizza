//
//  FirstViewController.swift
//  pizza
//
//  Created by Jesus Sanchez on 20/07/16.
//  Copyright © 2016 Jesus Sanchez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var size : Int = 0
    var miPizza : Pizza? = nil
    let text : String = "Has elegido la pizza "
    
    @IBOutlet weak var msg: UILabel!
    
    @IBAction func setSmall(sender: AnyObject) {
        size = 1
        miPizza?.setSize(size)
        msg.text = text + (self.miPizza?.getStringSize())!
        msg.textColor = UIColor.blackColor()
    }
    @IBAction func setMedium(sender: AnyObject) {
        size = 2
        miPizza?.setSize(size)
        msg.text = text + (self.miPizza?.getStringSize())!
        msg.textColor = UIColor.blackColor()
    }
    @IBAction func setBig(sender: AnyObject) {
        size = 3
        miPizza?.setSize(size)
        msg.text = text + (self.miPizza?.getStringSize())!
        msg.textColor = UIColor.blackColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        miPizza = Pizza()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! DoughtType
        nextView.miPizza = self.miPizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

