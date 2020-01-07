import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print("documentsPath:\(documentsPath)")
        
    }
    
    @IBAction func hide(_ sender: Any) {
        let deadlineTime = DispatchTime.now() + .seconds(0)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            UIView.animate(withDuration: 0.3) {
                self.detailLabel.isHidden = true
            }
        }
    }
    
    @IBAction func show(_ sender: Any) {
        let deadlineTime1 = DispatchTime.now() + .seconds(0)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime1) {
            UIView.animate(withDuration: 0.3) {
                self.detailLabel.isHidden = false
            }
        }
    }
    
    
    
}

