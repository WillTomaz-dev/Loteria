//
//  ViewController.swift
//  Loteria
//
//  Created by William Tomaz on 23/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    

    var numeros: [UInt32] = [
        arc4random_uniform(99),
        arc4random_uniform(99),
        arc4random_uniform(99),
        arc4random_uniform(99),
        arc4random_uniform(99),
        arc4random_uniform(99)
    ]
    
    var labels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels = [n1, n2, n3, n4, n5, n6]
        
        for i in 0..<numeros.count {
            labels[i].text = "\(numeros[i])"
        }
        
    }
    
    @IBAction func OptionsLoterias(_ sender: Any) {
        
    }
    
    @IBAction func gerarButton(_ sender: Any) {
        
        numeros.removeAll()
        numeros.append(contentsOf: [arc4random_uniform(99),
                                    arc4random_uniform(99),
                                    arc4random_uniform(99),
                                    arc4random_uniform(99),
                                    arc4random_uniform(99),
                                    arc4random_uniform(99)])
        
        for i in 0..<numeros.count {
            labels[i].text = "\(numeros[i])"
            
        }
    }
    
    }

