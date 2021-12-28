//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Luiz Oliveira on 28/12/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeView = HomeViewController()
        let searchView = SearchViewController()
        let libraryView = LibraryViewController()
        
        homeView.title = "Browse"
        searchView.title = "Search"
        libraryView.title = "Library"
        
        homeView.navigationItem.largeTitleDisplayMode = .always
        searchView.navigationItem.largeTitleDisplayMode = .always
        libraryView.navigationItem.largeTitleDisplayMode = .always
        
        let homeNav = UINavigationController(rootViewController: homeView)
        let searchNav = UINavigationController(rootViewController: searchView)
        let libraryNav = UINavigationController(rootViewController: libraryView)
        
        homeNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        searchNav.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        libraryNav.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        homeNav.navigationBar.prefersLargeTitles = true
        searchNav.navigationBar.prefersLargeTitles = true
        libraryNav.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNav, searchNav, libraryNav], animated: false)
    }
}
