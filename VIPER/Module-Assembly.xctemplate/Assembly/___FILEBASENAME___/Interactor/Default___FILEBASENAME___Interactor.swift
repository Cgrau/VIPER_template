//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___InteractorDelegate: class {
  func somethingFetched()
}

class Default___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___Interactor{
  
  var delegate: ___VARIABLE_sceneName___InteractorDelegate?
  
  func fetchSomething() {
    delegate?.somethingFetched()
  }
}
