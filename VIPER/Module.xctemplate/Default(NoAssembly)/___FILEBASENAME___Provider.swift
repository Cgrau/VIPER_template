import UIKit

protocol ___VARIABLE_sceneName___Provider {
  func get___VARIABLE_sceneName___ViewController() -> UIViewController
}

class Default___VARIABLE_sceneName___Provider : ___VARIABLE_sceneName___Provider {
  func get___VARIABLE_sceneName___ViewController() -> UIViewController {
    let viewController = ___VARIABLE_sceneName___ViewController()
    viewController.mainView = mainView
    let navigator = mainNavigator(from: viewController)
    let interactor = mainInteractor()
    let presenter = mainPresenter(from: viewController,
                                  navigator: navigator,
                                  interactor: interactor)
    
    viewController.presenter = presenter
    return viewController
  }
  
  private var mainView: ___VARIABLE_sceneName___View {
    return ___VARIABLE_sceneName___View()
  }
  
  private func mainPresenter(from: UIViewController,
                             navigator: ___VARIABLE_sceneName___Navigator,
                             interactor: ___VARIABLE_sceneName___Interactor) -> ___VARIABLE_sceneName___Presenter {
    let presenter = Default___VARIABLE_sceneName___Presenter(interactor: interactor, navigator: navigator)
    interactor.delegate = presenter
    presenter.ui = from as? ___VARIABLE_sceneName___ViewController
    
    return presenter
  }
  
  private func mainNavigator(from: UIViewController) -> ___VARIABLE_sceneName___Navigator {
    return Default___VARIABLE_sceneName___Navigator(from: from)
  }
  
  private func mainInteractor() -> ___VARIABLE_sceneName___Interactor {
    return Default___VARIABLE_sceneName___Interactor()
  }
}
