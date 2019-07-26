//
//  DoubanMovies.swift
//  MLMovies
//
//  Created by shenjie on 2019/7/26.
//  Copyright © 2019 shenjie. All rights reserved.
//

import UIKit

class DoubanMovies: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var dbCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let  flowLayout = UICollectionViewFlowLayout();
        flowLayout.itemSize = CGSize(width: 100, height: 150);
        flowLayout.minimumLineSpacing = 0;
        flowLayout.minimumInteritemSpacing = 0;
        
        dbCollectionView.setCollectionViewLayout(flowLayout, animated: true);
        dbCollectionView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width , height: UIScreen.main.bounds.size.height);
        dbCollectionView.delegate = self;
        dbCollectionView.dataSource = self;

        dbCollectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "DBMOVIECELL");
        dbCollectionView.allowsMultipleSelection = true;
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DBMOVIECELL", for: indexPath)
        
        
        
    }
    
}
