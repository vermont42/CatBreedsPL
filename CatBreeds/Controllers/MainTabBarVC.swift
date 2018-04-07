//
//  MainTabBarVC.swift
//  CatBreeds
//
//  Created by Joshua Adams on 3/28/18.
//  Copyright © 2018 Josh Adams. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {
  internal static let tabs = ["Browse", "Credits"]

  init() {
    super.init(nibName: nil, bundle: nil)
    let breedBrowseNavC = UINavigationController(rootViewController: BreedBrowseVC())
    breedBrowseNavC.tabBarItem = UITabBarItem(title: MainTabBarVC.tabs[0], image: UIImage(named: MainTabBarVC.tabs[0]), selectedImage: nil)
    let creditsVC = CreditsVC()
    creditsVC.tabBarItem = UITabBarItem(title: MainTabBarVC.tabs[1], image: UIImage(named: MainTabBarVC.tabs[1]), selectedImage: nil)
    viewControllers = [breedBrowseNavC, creditsVC]
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }
}
