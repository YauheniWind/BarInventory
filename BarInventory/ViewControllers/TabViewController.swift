//
//  TabViewController.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 27/11/2022.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
    }
    

    
    // MARK: - Navigation

  
    private func setupViewControllers() {
        guard let listVC = viewControllers?.first as? ListOfAlcoholViewController else { return }
        guard let generalTypesVC = viewControllers?.last as? GeneralTypesViewController else { return }
        
      
        let alcohol = Alcohol.getAlcoholList()
        
        listVC.alcohol = alcohol
        generalTypesVC.alcohol = alcohol

    }
}
