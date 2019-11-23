import Cacao
import Foundation

class GridLayoutHelper {

    private let widthSize: Int
    private let heightSize: Int
    private let bounds: CGRect

    init(bounds: CGRect, widthInCells: Int, heightInCells: Int) {
        self.widthSize = widthInCells
        self.heightSize = heightInCells
        self.bounds = bounds
    }

    /// Obtains appropriate CGRect for drawing content at the given
    /// location within the bounds
    func frameAt(x: Int, y: Int) -> CGRect {
        let height = self.bounds.size.height
        let width = self.bounds.size.width

        let unitWSize = width / CGFloat(self.widthSize)
        let unitHSize = height / CGFloat(self.heightSize)

        let xCoord = CGFloat(x) * unitWSize
        let yCoord = CGFloat(y) * unitHSize

        return CGRect.init(x: xCoord, y: yCoord, width: unitWSize, height: unitHSize)
    }

}