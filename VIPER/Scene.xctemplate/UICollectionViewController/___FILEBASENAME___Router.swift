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
        let view = mainstoryboard.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___ViewController") as? ___VARIABLE_sceneName___ViewController
        //if let view = navController.childViewControllers.first as? LiveNewsViewController {
        let presenter: ___VARIABLE_sceneName___ViewToPresenterProtocol & ___VARIABLE_sceneName___InterectorToPresenterProtocol = ___VARIABLE_sceneName___Presenter()
        let interactor: ___VARIABLE_sceneName___PresentorToInterectorProtocol = ___VARIABLE_sceneName___Interector()
        let router: ___VARIABLE_sceneName___PresenterToRouterProtocol = ___VARIABLE_sceneName___Router()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interector = interactor
        interactor.presenter = presenter
        
        return view!
        
        //}
        
        //return UIViewController()
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"___VARIABLE_sceneName___",bundle: Bundle.main)
    }
}
