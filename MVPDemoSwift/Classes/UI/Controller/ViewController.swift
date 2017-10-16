import UIKit

class ViewController: UIViewController, MainView {
    @IBOutlet weak var activityBar: UIActivityIndicatorView!

    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var password: UITextField!

    var presenter: ViewPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        activityBar.isHidden = true
        presenter = ViewPresenter.init(mainView: self)
    }
    @IBAction func loginClick(sender: UIButton) {
        presenter!.login()
    }

    @IBAction func clearClick(sender: UIButton) {
        presenter!.clear()
    }
    //============= MainView ==================
    func showProgress() {
        activityBar.isHidden = false
    }
    func dismisss() {
        activityBar.isHidden = true
    }
    func getUserName() -> String {
        return username.text!
    }
    func getPassWord() -> String {
        return password.text!
    }
    func clearUserName() {
        username.text = ""
    }
    func clearPassWord() {
        password.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

