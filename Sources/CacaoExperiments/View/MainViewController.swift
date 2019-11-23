import Cacao
import Silica

class MainViewController: UIViewController {

    private(set) weak var label: UILabel!
    weak var button: UIButton!

    private var gridLayout: GridLayoutHelper!

    override func loadView() {

        

        view = UIView()

        let label = UILabel()
        label.text = "Hello world!"
        label.textAlignment = .center
        label.textColor = .green
        

        self.label = label

        view.addSubview(label)

        let button = UIButton()
        button.backgroundColor = .red
        
        let clickHere = UILabel()
        clickHere.text = "Click Here!"
        clickHere.textColor = .blue
        button.addSubview(clickHere)

        view.addSubview(button)

        

        self.button = button

    }

    override func viewWillLayoutSubviews() {
        self.gridLayout = GridLayoutHelper.init(bounds: view.bounds, widthInCells: 4, heightInCells: 4)

        label.frame = gridLayout.frameAt(x: 2, y: 0)
        button.frame = gridLayout.frameAt(x: 0, y: 0)
    }

    

    override func viewDidLoad() {

        super.viewDidLoad()

    }

}