import Cacao

class SomeOtherViewController: UIViewController {

    var helloLabel: UILabel!

    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .white

        let label = UILabel.init()
        label.text = "HELLO FROM ANOTHER VC"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.textAlignment = .center
        self.view.addSubview(label)

        self.helloLabel = label
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        self.helloLabel.bounds = view.bounds
    }

    override func viewDidLayoutSubviews() {
        self.helloLabel.bounds = view.bounds
    }

}