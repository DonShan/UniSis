//
//  LiveChannelsCollectionViewCell.swift
//  UniSis
//
//  Created by Madushan Senavirathna on 2023-08-30.
//

import UIKit

class LiveChannelsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var liveChannelImage: UIImageView!
    
    func configure(with image: UIImage, isMainCard: Bool) {
           liveChannelImage.image = image
           animateCardAppearance(isMainCard: isMainCard)
       }
       
       private func animateCardAppearance(isMainCard: Bool) {
           let initialTransform = isMainCard ? CGAffineTransform.identity : CGAffineTransform(scaleX: 0.8, y: 0.8)
           let initialAlpha: CGFloat = isMainCard ? 1.0 : 0.8
           
           self.transform = initialTransform
           self.alpha = initialAlpha
           
           UIView.animate(withDuration: 0.5) {
               self.transform = .identity
               self.alpha = 1.0
           }
       }
 
}
