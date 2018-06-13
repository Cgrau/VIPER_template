//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: UICollectionViewController {
    
    var presenter: ___VARIABLE_sceneName___ViewToPresenterProtocol?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.updateView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___PresenterToViewProtocol {
    
    func showSomething(argument: ___VARIABLE_sceneName___Model) {
    }
}
