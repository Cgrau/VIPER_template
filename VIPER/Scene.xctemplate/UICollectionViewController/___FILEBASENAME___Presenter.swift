//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___ViewToPresenterProtocol {
    
    var view: ___VARIABLE_sceneName___PresenterToViewProtocol?
    var interector: ___VARIABLE_sceneName___PresentorToInterectorProtocol?
    var router: ___VARIABLE_sceneName___PresenterToRouterProtocol?
    
    func updateView() {
        interector?.fetchSomething()
    }
}

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___InterectorToPresenterProtocol {
    
    func somethingFetched(argument: ___VARIABLE_sceneName___Model) {
        view?.showSomething(argument: argument)
    }
}
