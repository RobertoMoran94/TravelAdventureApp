//
//  HomeTabViewController.swift
//  TravelAdventureApp
//
//  Created by Roberto Moran on 3/8/24.
//

import Foundation
import UIKit

class MainTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setViewNavigationControllers()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func setViewNavigationControllers() {
        let homeViewController = buildHomeViewController()
        let searchPlacesViewCotroller = buildSearchPlacesViewController()
        let savedPlacesViewController = buildSavedPlacesViewController()
        let accountDetailsViewController = buildAccountDetailsViewController()
        setViewControllers([homeViewController,
                            searchPlacesViewCotroller,
                            savedPlacesViewController,
                            accountDetailsViewController], animated: true)
    }
    
    private func buildHomeViewController() -> UINavigationController {
        let vc = UINavigationController(rootViewController: HomeViewController())
        vc.tabBarItem.image = UIImage(systemName: "house")
        vc.title = "Home"
        return vc
    }
    
    private func buildSearchPlacesViewController() -> UINavigationController {
        let vc = UINavigationController(rootViewController: SearchPlacesViewController())
        vc.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc.title = "Search"
        return vc
    }
    
    private func buildSavedPlacesViewController() -> UINavigationController {
        let vc = UINavigationController(rootViewController: HomeViewController())
        vc.tabBarItem.image = UIImage(systemName: "heart.fill")
        vc.title = "Favorite"
        return vc
    }
    
    private func buildAccountDetailsViewController() -> UINavigationController {
        let vc = UINavigationController(rootViewController: HomeViewController())
        vc.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
        vc.title = "Account"
        return vc
    }
}
