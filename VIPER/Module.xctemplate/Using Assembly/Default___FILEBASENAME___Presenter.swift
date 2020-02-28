import UIKit

class Default___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presenter {
  
  weak var ui: ___VARIABLE_sceneName___UI?
  private let  interactor: ___VARIABLE_sceneName___Interactor
  private let  navigator: ___VARIABLE_sceneName___Navigator
  
  init(interactor: ___VARIABLE_sceneName___Interactor,
       navigator: ___VARIABLE_sceneName___Navigator) {
    self.interactor = interactor
    self.navigator = navigator
  }
  
  func didLoad() {
    interactor.fetchSomething()
  }
}

extension Default___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___InteractorDelegate {
  
  func somethingFetched() {
    ui?.showSomething()
  }
}
