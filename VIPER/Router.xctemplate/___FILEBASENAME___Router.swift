//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___PresenterToRouterProtocol{
    
    class func createModule() -> UIViewController{
        let view = ___VARIABLE_sceneName___ViewController()
        let presenter: ___VARIABLE_sceneName___ViewToPresenterProtocol & ___VARIABLE_sceneName___InteractorToPresenterProtocol = ___VARIABLE_sceneName___Presenter()
        let interactor: ___VARIABLE_sceneName___PresenterToInteractorProtocol = ___VARIABLE_sceneName___Interactor()
        let router: ___VARIABLE_sceneName___PresenterToRouterProtocol = ___VARIABLE_sceneName___Router()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
