import UIKit
import ACPCore

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ACPCore.trackState("Account View", data: nil)
        super.viewWillAppear(animated)
    }


}

