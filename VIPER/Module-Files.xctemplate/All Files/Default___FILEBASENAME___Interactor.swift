import UIKit

protocol ___VARIABLE_sceneName___InteractorDelegate: class {
  func somethingFetched()
}

class Default___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___Interactor{
  
  weak var delegate: ___VARIABLE_sceneName___InteractorDelegate?
  
  func fetchSomething() {
    delegate?.somethingFetched()
  }
}
