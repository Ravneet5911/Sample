//
//  SecondViewController.swift
//  SampleApp
//
//  Created by Ravneet Singh on 14/02/23.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return payment.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shoppingCell", for: indexPath) as! SecondCollectionViewCell
        cell.imagePayment.image = UIImage(named: payment[indexPath.row])
        return cell
    }
    
    var payment = ["payment1", "payment2"]
    
}
