//
//  NavigationViewController.swift
//  pokedex-app
//
//  Created by Leonardo Cardoso on 12/05/23.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        let pokedexVC = PokedexViewController()
        let capturedVC = CapturedViewController()

        
        let pokedexNav = UINavigationController(rootViewController: pokedexVC)
        let capturedNav = UINavigationController(rootViewController: capturedVC)
        
        
        for nav in [pokedexNav, capturedNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        pokedexNav.tabBarItem = UITabBarItem(title: "Pokédex", image: UIImage(systemName: "list.number"), tag: 0)
        capturedNav.tabBarItem = UITabBarItem(title: "Captured", image: UIImage(systemName: "list.star"), tag: 1)
        
        setViewControllers([pokedexNav, capturedNav], animated: true)
        
    }
    
}
