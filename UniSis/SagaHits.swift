//
//  SagaHits.swift
//  UniSis
//
//  Created by Madushan Senavirathna on 2023-08-30.
//

import Foundation
import UIKit

class SagaHitsCountries {
    var countryname: String = ""
    var countryImage: UIImage
    var onineStatus: Bool
    
    init(countryname: String, countryImage: UIImage, onineStatus: Bool) {
        self.countryname = countryname
        self.countryImage = countryImage
        self.onineStatus = onineStatus
    }
    
    static func fetchSagaHitsCountries() -> [SagaHitsCountries] {
        return [
            SagaHitsCountries(countryname: "UK", countryImage: UIImage(named: "UK")!, onineStatus: true),
            SagaHitsCountries(countryname: "Australia", countryImage: UIImage(named: "Australia")!, onineStatus: true),
            SagaHitsCountries(countryname: "India", countryImage: UIImage(named: "India")!, onineStatus: true)
        ]
    }
}
