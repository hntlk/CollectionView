//
//  ViewController.swift
//  CollectionView1
//
//  Created by Cntt22 on 4/26/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var images = ["one","two","three","four","five","six","seven","eight","nine"]
    @IBOutlet weak var MyCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! MyCollectionViewCell
        
        cell.MyImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
}

