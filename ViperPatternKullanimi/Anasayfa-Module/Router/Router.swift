//
//  Router.swift
//  ViperPatternKullanimi
//
//  Created by İlker Kaya on 6.12.2022.
//

import Foundation

class Router : PresenterToRouterProtocol{
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View sınıf değişkeni
        ref.presenterNesnesi = presenter
        
        //Presenter sınıfı değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //Interactor değişkeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
}

