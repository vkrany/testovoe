//
//  UICollectionViewController.swift
//  ios-testovoe
//
//  Created by Владимир Красный on 24.05.2023.
//

import UIKit

class UICollectionViewController : UIViewController {
    
    var collectionView : UICollectionView!
    
    let sourse: [Photo] = Sourse.randomPhotos(witt: 15)
    
    override func viewDidLoad() {
        setupCollecrionView()
        super.viewDidLoad()
    }
    
    func setupCollecrionView() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowlayout())
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        collectionView.dataSource = self
        
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: "\(PhotoCell.self)")
    }
    
    func setupFlowlayout() -> UICollectionViewFlowLayout{
        let layout =  UICollectionViewFlowLayout()
        
        
        return layout
    }
}

extension UICollectionViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sourse.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"\(PhotoCell.self)", for: indexPath) as? PhotoCell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: sourse[indexPath.item].imageName)
        return cell
    }
}
