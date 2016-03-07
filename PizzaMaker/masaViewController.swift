//
//  masaViewController.swift
//  PizzaMaker
//
//  Created by Luis Eduardo Ruiz on 06/03/16.
//  Copyright © 2016 Luis Eduardo Ruiz. All rights reserved.
//

import UIKit

class masaViewController: UIViewController {
    
    var tamano : String = ""
    var masa : String = ""

    @IBOutlet weak var delgadaButton: UIButton!
    @IBOutlet weak var crujienteButton: UIButton!
    @IBOutlet weak var gruesaButton: UIButton!
    @IBOutlet weak var next2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delgadaButton.layer.cornerRadius = 8
        crujienteButton.layer.cornerRadius = 8
        gruesaButton.layer.cornerRadius = 8
        next2Button.layer.cornerRadius = 8
        next2Button.hidden = true
        
    }
    
    override func viewWillAppear(animated: Bool) {
        print("tanaño \(tamano)")
    }
    
    
    @IBAction func setDelgada(sender: AnyObject) {
        
        masa = "Delgada"
        delgadaButton.backgroundColor = UIColor.blueColor()
        crujienteButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        gruesaButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next2Button.hidden = false
        
        
    }
    

    @IBAction func setCrujiente(sender: AnyObject) {
        
        masa = "Crujiente"
        crujienteButton.backgroundColor = UIColor.blueColor()
        delgadaButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        gruesaButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next2Button.hidden = false
    }
    
    
    @IBAction func setGruesa(sender: AnyObject) {
        
        masa = "Gruesa"
        gruesaButton.backgroundColor = UIColor.blueColor()
        crujienteButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        delgadaButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next2Button.hidden = false
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanoS = segue.destinationViewController as! quesoViewController
        let masaS = segue.destinationViewController as! quesoViewController
        masaS.masa = masa
        tamanoS.tamano = tamano
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
