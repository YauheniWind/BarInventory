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

        sendData()
    }
    

  private func sendData() {
       guard let viewControllers = viewControllers else { return }
     
       let alcohol = Alcohol.getAlcoholList()

       for viewController in viewControllers {
         if let alcoholListVC = viewController as? ListOfAlcoholViewController {
           alcoholListVC.alcoholOne = alcohol
         }
       }
   }

}
