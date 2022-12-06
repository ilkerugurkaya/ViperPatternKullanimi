//
//  ViewController.swift
//  ViperPatternKullanimi
//
//  Created by İlker Kaya on 6.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var sayi1: UITextField!
    
    
    @IBOutlet weak var sayi2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = "0"
    }

    @IBAction func topla(_ sender: Any) {
        if let sayi = sayi1.text, let sayiki = sayi2.text{
            if let s1 = Int(sayi),let s2 = Int(sayiki){
                let toplam = s1 + s2
                labelSonuc.text = String(toplam)
            }
        }
    }
    
    @IBAction func carpma(_ sender: Any) {
        if let sayi = sayi1.text, let sayiki = sayi2.text{
            if let s1 = Int(sayi),let s2 = Int(sayiki){
                let carpma = s1 * s2
                labelSonuc.text = String(carpma)
            }
        }
    }
}

