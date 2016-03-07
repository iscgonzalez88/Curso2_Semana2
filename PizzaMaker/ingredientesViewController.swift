//
//  ingredientesViewController.swift
//  PizzaMaker
//
//  Created by Luis Eduardo Ruiz on 06/03/16.
//  Copyright © 2016 Luis Eduardo Ruiz. All rights reserved.
//

import UIKit

class ingredientesViewController: UIViewController {
    
    var masa : String = ""
    var queso : String = ""
    var tamano : String = ""
    var ingredientes = Set<String>()
    
    
    @IBOutlet weak var jamonButton: UIButton!
    @IBOutlet weak var champButton: UIButton!
    @IBOutlet weak var pinaButton: UIButton!
    @IBOutlet weak var peppeButton: UIButton!
    @IBOutlet weak var pimieButton: UIButton!
    @IBOutlet weak var aceitButton: UIButton!
    @IBOutlet weak var next4Button: UIButton!
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        jamonButton.layer.cornerRadius = 5
        champButton.layer.cornerRadius = 5
        pinaButton.layer.cornerRadius = 5
        peppeButton.layer.cornerRadius = 5
        pimieButton.layer.cornerRadius = 5
        aceitButton.layer.cornerRadius = 5
        next4Button.layer.cornerRadius = 5
        checkArreglo()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func jamSelect(sender: AnyObject) {
        if ingredientes.contains("Jamón"){
            
            jamonButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Jamón")
            checkArreglo()
            checkIngredients()
            
        }else{
            
            jamonButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Jamón")
            checkArreglo()
            checkIngredients()
        }
    }
    
    
    @IBAction func champSelect(sender: AnyObject) {
        if ingredientes.contains("Champiñon"){
            
            champButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Champiñon")
            checkArreglo()
            checkIngredients()
            
        }else{
            
            champButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Champiñon")
            checkArreglo()
            checkIngredients()
        }
        
    }
    
    
    @IBAction func pinaSelect(sender: AnyObject) {
        
        if ingredientes.contains("Piña"){
            
            pinaButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Piña")
            checkArreglo()
            checkIngredients()
            
        }else{
            
            pinaButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Piña")
            checkArreglo()
            checkIngredients()
        }
        
        
    }
    
    @IBAction func peppeSelect(sender: AnyObject) {
        if ingredientes.contains("Pepperoni"){
            
            peppeButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Pepperoni")
            checkArreglo()
            checkIngredients()
            
        }else{
            
            peppeButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Pepperoni")
            checkArreglo()
            checkIngredients()
        }
    }
    
    
    @IBAction func pimieSelect(sender: AnyObject) {
        if ingredientes.contains("Pimiento"){
            
            pimieButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Pimiento")
            checkArreglo()
            checkIngredients()

            
        }else{
            
            pimieButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Pimiento")
            checkArreglo()
            checkIngredients()
        }
    }
    
    
    @IBAction func aceitSelect(sender: AnyObject) {
        if ingredientes.contains("Aceituna"){
            
            aceitButton.backgroundColor = UIColor(red: 234/255, green: 109/255, blue: 0/255, alpha: 1)
            ingredientes.remove("Aceituna")
            checkArreglo()
            checkIngredients()

            
        }else{
            
            aceitButton.backgroundColor = UIColor.blueColor()
            ingredientes.insert("Aceituna")
            checkArreglo()
            checkIngredients()
        }
    }
    
    
    func checkArreglo(){
        if ingredientes.count == 0 {
            next4Button.hidden = true
        }
        else{
            next4Button.hidden = false
        }
    }
    
    func checkIngredients() {
    
        if ingredientes.count > 5 {
            next4Button.hidden = true
        }
        else {
            next4Button.hidden = false
        }
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let tamanoS = segue.destinationViewController as! resumenViewController
        let masaS = segue.destinationViewController as! resumenViewController
        let quesoS = segue.destinationViewController as! resumenViewController
        let ingredientesS = segue.destinationViewController as! resumenViewController
        
        
        tamanoS.tamano = tamano
        masaS.masa = masa
        quesoS.queso = queso
        ingredientesS.ingredientes = ingredientes
        
        
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
