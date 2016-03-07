//
//  ViewController.swift
//  PizzaMaker
//
//  Created by Luis Eduardo Ruiz on 03/03/16.
//  Copyright © 2016 Luis Eduardo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chicoButton: UIButton!
    @IBOutlet weak var medianButton: UIButton!
    @IBOutlet weak var grandeButton: UIButton!
    @IBOutlet weak var next1Button: UIButton!
    
    var tamano : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chicoButton.layer.cornerRadius = 8
        medianButton.layer.cornerRadius = 8
        grandeButton.layer.cornerRadius = 8
        next1Button.layer.cornerRadius = 8
        next1Button.hidden = true
        
    }
    
    @IBAction func setchica(sender: AnyObject) {
       
        tamano = "Chica"
        chicoButton.backgroundColor = UIColor.blueColor()
        medianButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        grandeButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next1Button.hidden = false
        print("seleccion: \(tamano)")
        
    }
    
    @IBAction func setMediana(sender: AnyObject) {
        tamano = "Mediana"
        medianButton.backgroundColor = UIColor.blueColor()
        chicoButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        grandeButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0, alpha: 1)
        next1Button.hidden = false
        print("seleccion: \(tamano)")
    }
    
   
    @IBAction func SetGrande(sender: AnyObject) {
        tamano = "Grande"
        grandeButton.backgroundColor = UIColor.blueColor()
        chicoButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        medianButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next1Button.hidden = false
        print("seleccion: \(tamano)")
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanoSelect : String = tamano
        let tamanoResumen = segue.destinationViewController as! masaViewController
        tamanoResumen.tamano = tamanoSelect
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

