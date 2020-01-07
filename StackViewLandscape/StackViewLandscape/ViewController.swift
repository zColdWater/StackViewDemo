import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hide(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.tom.isHidden = true
        }
    }
    
    @IBAction func show(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.tom.isHidden = false
        }
    }
    
}

