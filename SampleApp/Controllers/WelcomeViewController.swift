//
//  WelcomeViewController.swift
//  SampleApp
//
//  Created by Ravneet Singh on 13/02/23.
//

import UIKit

class WelcomeViewController: UIViewController {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return pictures.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
//        cell.visaImage.image = UIImage(named: pictures[indexPath.row])
//        cell.layer.cornerRadius = 30.0
//        return cell
//    }
//
//    let pictures = ["Visa"]
//
    
    let collectionView1Cell = "CollectionView1Cell"
    let collectionView2Cell = "CollectionView2Cell"
    let collectionView3Cell = "CollectionView3Cell"
    
    let Cards = ["Visa"]
    let users = ["Ani", "Jhone", "David", "Alexa"]
    let transactions = ["AmazonPayment"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.delegate = self
        collectionView1.dataSource = self
        
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
        collectionView3.delegate = self
        collectionView3.dataSource = self
        
    }
    
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
}
extension WelcomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return Cards.count
        } else if collectionView == self.collectionView2 {
            return users.count
        } else if collectionView == self.collectionView3 {
            return transactions.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView1Cell, for: indexPath) as! CollectionView1Cell
            cell1.visaImage.image = UIImage(named: Cards[indexPath.row])
            cell1.layer.cornerRadius = 30.0
            return cell1
            
        }
        else if collectionView == self.collectionView2 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView2Cell, for: indexPath) as! CollectionView2Cell
            cell2.userImage.image = UIImage(named: users[indexPath.row])
            return cell2
            
        }
        else if collectionView == self.collectionView3 {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView3Cell, for: indexPath) as! CollectionView3Cell
            cell3.paymentImage.image = UIImage(named: transactions[indexPath.row])
            cell3.layer.cornerRadius = 30.0
            return cell3
        }
        
        return UICollectionViewCell()
    }
    
    
}
