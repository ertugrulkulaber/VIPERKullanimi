//
//  Router.swift
//  VIPERKullanimi
//
//  Created by Ertuğrul Kulaber on 13.11.2021.
//

import Foundation

class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter : ViewToPresenterProtocol & InteractorToPresenterProtocol = Presenter()
//       view içindeki presinter nesnesi yetki verildi
        ref.presenterNesnesi = presenter
//      presenter katmanı yekinlendirmeleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
//        interactor katmani teykilendirme
        ref.presenterNesnesi?.interactor?.presenter = presenter
    
    }
}
