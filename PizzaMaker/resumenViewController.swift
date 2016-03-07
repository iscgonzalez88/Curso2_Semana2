//
//  resumenViewController.swift
//  PizzaMaker
//
//  Created by Luis Eduardo Ruiz on 06/03/16.
//  Copyright © 2016 Luis Eduardo Ruiz. All rights reserved.
//

import UIKit

class resumenViewController: UIViewController {
    
    var ingredientes = Set<String>()
    var masa : String = ""
    var tamano : String = ""
    var queso : String = ""
    var ingredienteLista : String = ""
    
    @IBOutlet weak var tamanoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for ingrs in ingredientes {
            ingredienteLista = ingrs + "\n" + ingredienteLista
        }
        //ingredienteLista = ingredienteLista.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        
        tamanoLabel.text = "Tamaño: \n \(tamano)"
        masaLabel.text = "Masa: \n \(masa)"
        quesoLabel.text = "Queso: \n \(queso)"
        ingredientesLabel.text = "Ingredientes \n \(ingredienteLista)"
        print(ingredienteLista)
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        
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
