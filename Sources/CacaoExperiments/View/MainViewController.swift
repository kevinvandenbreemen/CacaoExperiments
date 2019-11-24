import Cacao
import Silica

class MainViewController: UIViewController {

    private(set) weak var label: UILabel!
    weak var button: UIButton!

    private var gridLayout: GridLayoutHelper!

    weak var container: UIView!

    override func loadView() {

        

        view = UIView()

        let label = UILabel()
        label.text = "Hello world!"
        label.textAlignment = .center
        label.textColor = .green
        

        self.label = label

        view.addSubview(label)

        let button = UIButton()
        button.backgroundColor = .black
        
        let clickHere = UILabel()
        clickHere.text = "Click Here!"
        clickHere.textColor = .white
        clickHere.textAlignment = .center
        clickHere.font = UIFont.boldSystemFont(ofSize: 30)
        button.addSubview(clickHere)
        button.addTarget(self, action: Selector(name: "buttonPressed", action: {_,sender,_ in 
            self.buttonPressed(sender as! UIButton)}
        ), for: .touchUpInside)

        view.addSubview(button)

        self.button = button

        //  Set up the container
        let containerView = UIView.init()
        containerView.backgroundColor = .white
        self.container = containerView
        view.addSubview(containerView)

    }

    private func buttonPressed(_ sender: UIButton) {
        
        let childViewController = SomeOtherViewController.init()
        self.addChildViewController(childViewController)
        self.container.addSubview(childViewController.view)
        childViewController.view.bounds = self.container.bounds
        self.view.setNeedsLayout()
        
    }

    override func viewWillLayoutSubviews() {
        self.gridLayout = GridLayoutHelper.init(bounds: view.bounds, widthInCells: 3, heightInCells: 3)

        label.frame = gridLayout.frameAt(x: 2, y: 0)
        button.frame = gridLayout.frameAt(x: 0, y: 0)
        button.subviews[0].frame = button.frame

        self.container.frame = gridLayout.frameAt(x: 0, y: 1)
    }

    

    override func viewDidLoad() {

        super.viewDidLoad()

    }

}