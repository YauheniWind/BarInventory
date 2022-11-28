//
//  Alcohol.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 28/11/2022.
//

import Foundation


struct Alcohol {
  
  let brandsOfVodka: String
  let brandsOfWhiskey: String
  let brandsOfRum: String
  let brandsOfBrandyAndCognac: String
  let brandsOfTequila: String
  
  let category: String
  let capacity: String
  let generalCapacity: String
  
}

extension Alcohol {
  static func getAlcoholList() -> [Alcohol] {
    
    var alcohols: [Alcohol] = []
    
    let brandsOfVodka = DataManager.shered.brandsOfVodka
    let brandsOfWhiskey = DataManager.shered.brandsOfWhiskey
    let brandsOfRum = DataManager.shered.brandsOfRum
    let brandsOfBrandyAndCognac = DataManager.shered.brandsOfBrandyAndCognac
    let brandsOfTequila = DataManager.shered.brandsOfTequila
    
    let category = DataManager.shered.category
    let capacity = DataManager.shered.capacity
    let generalCapacity = DataManager.shered.generalCapacity
    
    let iteretionCount = min(
      brandsOfVodka.count,
      brandsOfWhiskey.count,
      brandsOfRum.count,
      brandsOfBrandyAndCognac.count,
      brandsOfTequila.count,
      category.count,
      capacity.count,
      generalCapacity.count
    )
    
    for index in 0..<iteretionCount {
      let alcohol = Alcohol(brandsOfVodka: brandsOfVodka[index],
                            brandsOfWhiskey: brandsOfWhiskey[index],
                            brandsOfRum: brandsOfRum[index],
                            brandsOfBrandyAndCognac: brandsOfBrandyAndCognac[index],
                            brandsOfTequila: brandsOfTequila[index],
                            category: category[index],
                            capacity: capacity[index],
                            generalCapacity: generalCapacity[index])
      
      alcohols.append(alcohol)
    }
    
    return alcohols
  }
}
