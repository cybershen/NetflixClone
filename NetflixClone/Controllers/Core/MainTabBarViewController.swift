//
//  ViewController.swift
//  NetflixClone
//
//  Created by Назар Жиленко on 25.10.2022.
//

import UIKit
import Lottie

class MainTabBarViewController: UITabBarController {
    private var animationView: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isHidden = true
        configureAnimationView()
        animationView?.play()
        stopAnimation()
        }
    
    private func configureAnimationView() {
        animationView = .init(name: "50097-netflix-logo")
        animationView!.frame = view.bounds
        animationView!.contentMode = .scaleAspectFit
        view.addSubview(animationView!)
        tabBar.isHidden = true
    }
    
    private func stopAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) { [weak self] in
            self?.animationView?.stop()
            self?.animationView?.isHidden = true
            self?.tabBar.isHidden = false
            self?.configureTabBarController()
        }
    }
    
    private func configureTabBarController() {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(assetIdentifier: .house)
        vc2.tabBarItem.image = UIImage(assetIdentifier: .playCircle)
        vc3.tabBarItem.image = UIImage(assetIdentifier: .magnifyingGlass)
        vc4.tabBarItem.image = UIImage(assetIdentifier: .arrowDownToLine)
        
        vc1.title = Constants.MainVCTitle.home
        vc2.title = Constants.MainVCTitle.comingSoon
        vc3.title = Constants.MainVCTitle.topSearch
        vc4.title = Constants.MainVCTitle.downloads
        
        overrideUserInterfaceStyle = .dark
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
 }
                                       
                                      
