import UIKit
import ACPCore

class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ACPCore.trackState("Shop View", data: nil)
        super.viewWillAppear(animated)
    }
    

}

