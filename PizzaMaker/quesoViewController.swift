//
//  quesoViewController.swift
//  PizzaMaker
//
//  Created by Luis Eduardo Ruiz on 06/03/16.
//  Copyright © 2016 Luis Eduardo Ruiz. All rights reserved.
//

import UIKit

class quesoViewController: UIViewController {

    
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    
    
    @IBOutlet weak var mozButton: UIButton!
    @IBOutlet weak var chedButton: UIButton!
    @IBOutlet weak var parmButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var next3Button: UIButton!
    
    
    override func viewWillAppear(animated: Bool) {
        print("Tamaño: \(tamano)")
        print("Masa: \(masa)")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mozButton.layer.cornerRadius = 8
        chedButton.layer.cornerRadius = 8
        parmButton.layer.cornerRadius = 8
        noButton.layer.cornerRadius = 8
        next3Button.layer.cornerRadius = 8
        next3Button.hidden = true

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func mozSelect(sender: AnyObject) {
        queso = "Mozarella"
        mozButton.backgroundColor = UIColor.blueColor()
        chedButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        parmButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        noButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next3Button.hidden = false
    }
    
    
    @IBAction func chedSelect(sender: AnyObject) {
        queso = "Cheddar"
        chedButton.backgroundColor = UIColor.blueColor()
        mozButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        parmButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        noButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next3Button.hidden = false
    }
    
  
    
    @IBAction func parmSelect(sender: AnyObject) {
        queso = "Parmesano"
        parmButton.backgroundColor = UIColor.blueColor()
        chedButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        mozButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        noButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next3Button.hidden = false
        
    }
    
    
    @IBAction func noSelect(sender: AnyObject) {
        queso = "Sin Queso"
        noButton.backgroundColor = UIColor.blueColor()
        chedButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        parmButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        mozButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
        next3Button.hidden = false
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        let tamanoS = segue.destinationViewController as! ingredientesViewController
        let masaS = segue.destinationViewController as! ingredientesViewController
        let quesoS = segue.destinationViewController as! ingredientesViewController
        tamanoS.tamano = tamano
        masaS.masa = masa
        quesoS.queso = queso
        
        
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
