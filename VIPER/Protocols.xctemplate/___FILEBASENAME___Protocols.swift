//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___PresenterToViewProtocol: class{
    func showSomething(argument: ___VARIABLE_sceneName___Model)
}

protocol ___VARIABLE_sceneName___InteractorToPresenterProtocol: class{
    func somethingFetched(argument: ___VARIABLE_sceneName___Model)
}

protocol ___VARIABLE_sceneName___PresenterToInteractorProtocol: class{
    var presenter: ___VARIABLE_sceneName___InteractorToPresenterProtocol? {get set}
    func fetchSomething()
}

protocol ___VARIABLE_sceneName___ViewToPresenterProtocol: class{
    var view: ___VARIABLE_sceneName___PresenterToViewProtocol? {get set}
    var interactor: ___VARIABLE_sceneName___PresenterToInteractorProtocol? {get set}
    var router: ___VARIABLE_sceneName___PresenterToRouterProtocol? {get set}
    func updateView()
}

protocol ___VARIABLE_sceneName___PresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
}
