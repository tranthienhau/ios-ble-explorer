//
//  BuilderLogWeight.swift
//  bleexplorer
//
//  Created by DatNguyen on 4/12/21.
//

import Foundation

class LogWeightBuilder {
    class func buildModule(arroundView view:ViewLogWeight) {
        
        //MARK: Initialise components.
        let presenter = PresenterLogWeight()
        let interactor = InteractorLogWeight()
        let router = RouterLogWeight()
        
        //MARK: link Viper components.
        // Setup View
        view.presenter = presenter
        // Setup Presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        // Setup Interactor
        interactor.presenter = presenter
    }
}
