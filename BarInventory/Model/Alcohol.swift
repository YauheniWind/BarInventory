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
        
        let brandsOfVodka = DataManager.shared.brandsOfVodka
        let brandsOfWhiskey = DataManager.shared.brandsOfWhiskey
        let brandsOfRum = DataManager.shared.brandsOfRum
        let brandsOfBrandyAndCognac = DataManager.shared.brandsOfBrandyAndCognac
        let brandsOfTequila = DataManager.shared.brandsOfTequila
        
        let category = DataManager.shared.category
        let capacity = DataManager.shared.capacity
        let generalCapacity = DataManager.shared.generalCapacity
        
        //        let alco = Alcohol(brandsOfVodka: brandsOfVodka.formatted(),
        //                           brandsOfWhiskey: brandsOfWhiskey.formatted(),
        //                           brandsOfRum: brandsOfRum.formatted(),
        //                           brandsOfBrandyAndCognac: brandsOfBrandyAndCognac.formatted(),
        //                           brandsOfTequila: brandsOfTequila.formatted(),
        //                           category: category.formatted(),
        //                           capacity: capacity.formatted(),
        //                           generalCapacity: generalCapacity.formatted()
        //        )
        for index in 0..<category.count {
            let alcohol = Alcohol(brandsOfVodka: brandsOfVodka[index],
                                  brandsOfWhiskey: brandsOfWhiskey.randomElement() ?? "",
                                  brandsOfRum: brandsOfRum.randomElement() ?? "",
                                  brandsOfBrandyAndCognac: brandsOfBrandyAndCognac.randomElement() ?? "",
                                  brandsOfTequila: brandsOfTequila.randomElement() ?? "",
                                  category: category[index],
                                  capacity: capacity.randomElement() ?? "",
                                  generalCapacity: generalCapacity.randomElement() ?? ""
            )
            
            alcohols.append(alcohol)
            
        }
        return alcohols
    }
}
