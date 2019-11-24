import Cacao
import Foundation

class DiagramView: UIView {

    override var intrinsicContentSize: CGSize {
        CGSize.init(width: 1000, height: 1000)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        self.backgroundColor = .clear
        self.frame.size = CGSize.init(width: 1000, height: 1000)
    }

    override func draw(_ rect: CGRect) {

        let littleRectangle = CGRect.init(x: rect.origin.x + 10, y: rect.origin.y + 10, width: 100, height: 100)

        

        let path = UIBezierPath(rect: rect)
        UIColor.green.setFill()
        path.fill()

        let littlePath = UIBezierPath.init(rect: littleRectangle)
        littlePath.lineWidth = CGFloat(6.0)
        littlePath.stroke()

        let textRect = CGRect.init(x: rect.origin.x + 200, y: rect.origin.y+10, width: 200, height: 40)
        let label = UILabel.init(frame: textRect)
        label.text = "Test Label"
        addSubview(label)

    }
    

}