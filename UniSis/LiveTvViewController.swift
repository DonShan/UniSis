//
//  LiveTvViewController.swift
//  UniSis
//
//  Created by Madushan Senavirathna on 2023-08-30.
//

import UIKit

class LiveTvViewController: UIViewController {

    @IBOutlet weak var liveChannelCollectionView: UICollectionView!
    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var chaintCollectionView: UICollectionView!
    @IBOutlet weak var SagaCollectionView: UICollectionView!

    var liveChanelImages: [String] = ["image1", "image2", "image3", "image4"]
    var sagaHitsCountries: [SagaHitsCountries] = SagaHitsCountries.fetchSagaHitsCountries()

    override func viewDidLoad() {
        super.viewDidLoad()

        pageController.currentPage = 0
        pageController.numberOfPages = liveChanelImages.count

        liveChannelCollectionView.register(ChaintPunjabCollectionViewCell.self, forCellWithReuseIdentifier: "chaintPunjabCell")
        liveChannelCollectionView.register(SagaHitsCollectionViewCell.self, forCellWithReuseIdentifier: "sagaHitsCell")
    }
}

extension LiveTvViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == chaintCollectionView {
            return liveChanelImages.count
        } else if collectionView == SagaCollectionView {
            return sagaHitsCountries.count
        }
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == chaintCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "chaintPunjabCell", for: indexPath) as! ChaintPunjabCollectionViewCell
            cell.ChaintPunjabImage.image = UIImage(named: liveChanelImages[indexPath.row])
            return cell
        } else if collectionView == SagaCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sagaHitsCell", for: indexPath) as! SagaHitsCollectionViewCell
            let country = sagaHitsCountries[indexPath.row]
            cell.SagaHitsImage.image = country.countryImage
            cell.CountryImage.image = country.countryImage
            cell.CountryName.text = country.countryname
            return cell
        }
        return UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if collectionView == liveChannelCollectionView {
            pageController.currentPage = indexPath.row
        }
    }
}



  


