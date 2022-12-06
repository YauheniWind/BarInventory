//
//  Alcohol.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 28/11/2022.
//

import Foundation


struct Alcohol {
  
  let brandsOfAlcohol: [String]
  
  let categoryOfAlcohol: String
  let capacityOfAlcohol: String
  let generalCapacityOfAlcohol: String
  
}

extension Alcohol {
  static func getAlcoholList() -> [Alcohol] {
    
    var alcohols: [Alcohol] = []
    
    let brands = DataManager.shered.brands
    
    let category = DataManager.shered.category
    let capacity = DataManager.shered.capacity
    let generalCapacity = DataManager.shered.generalCapacity
    
    let iteretionCount = min(
      brands.count,
      category.count,
      capacity.count,
      generalCapacity.count
    )
    
    var alcoBar: [String] = []
    
    for brands in brands.values {
      for bar in brands {
        alcoBar.append(bar)
      }
    }
    
    for index in 0..<iteretionCount {
        let alcohol = Alcohol(brandsOfAlcohol: alcoBar,
                              categoryOfAlcohol: category[index],
                              capacityOfAlcohol: capacity[index],
                              generalCapacityOfAlcohol: generalCapacity[index])
        alcohols.append(alcohol)
    }
    
    return alcohols
  }
}
