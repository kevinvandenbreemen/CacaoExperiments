import Cacao
import Foundation

class DiagramView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        self.backgroundColor = .clear
        self.frame.size = CGSize.init(width: 1000, height: 1000)
    }

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath(rect: rect)
        UIColor.green.setFill()
        path.fill()

    }
    

}