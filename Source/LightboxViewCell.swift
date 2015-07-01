import UIKit

public class LightboxViewCell: UICollectionViewCell {

  public static let reuseIdentifier: String = "LightboxViewCell"

  var lightboxView: LightboxView?

  public func configureCell(image: UIImage) {
    backgroundColor = .redColor()

    if let lightboxView = lightboxView where lightboxView.superview != nil  {
      lightboxView.removeFromSuperview()
    }

    lightboxView = LightboxView(frame: bounds,
      image: image)

    contentView.addSubview(lightboxView!)
  }
}
