import UIKit
import ACPCore

class SupportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ACPCore.trackState("Suppport View", data: nil)
        super.viewWillAppear(animated)
    }


}

