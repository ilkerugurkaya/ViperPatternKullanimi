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
    
    var presenterNesnesi:ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = "0"
        Router.createModule(ref: self)
    }

    @IBAction func topla(_ sender: Any) {
        if let sayi = sayi1.text, let sayiki = sayi2.text{
            presenterNesnesi?.toplamaYap(sayi1: sayi, sayi2: sayiki)
        }
    }
    
    @IBAction func carpma(_ sender: Any) {
        if let sayi = sayi1.text, let sayiki = sayi2.text{
            presenterNesnesi?.carpmaYap(sayi1: sayi, sayi2: sayiki)
        }
    }
}

extension ViewController: PresenterToViewProtocol{
    func vieweVeriGönder(sonuc: String) {
        labelSonuc.text = sonuc
    }
}
