//
//  MainTapBarController.swift
//  ios-testovoe
//
//  Created by Владимир Красный on 22.05.2023.
//

import UIKit

class MainTapBarController: UITabBarController {

    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        generateTapBar()
        setTapBarApperance()
    }
    
    private func generateTapBar() {
        viewControllers = [
            generateVC(
                viewController: PandomPictureViewController(),
                title: "Random",
                image: UIImage(systemName: "house.fill")),
            generateVC(
                viewController: FavoritePictureViewController(),
                title: "Favorite",
                image: UIImage(systemName: "person.fill"))
        ]
    }

    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        tabBar.tintColor = .white
        return viewController
    }
    
    private func setTapBarApperance() {
        
        let roundLayer = CAShapeLayer()
        
        roundLayer.fillColor = UIColor.mainTabBar.cgColor
        
        tabBar.tintColor = .tabBarItemAccent
        
        tabBar.unselectedItemTintColor = .tabBarItem
        
    }
}
