//
//  Alcohol.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 28/11/2022.
//

struct Alcohol {
  
  let brands: String
  
  let category: String
  let capacity: String
  let generalCapacity: String
  
}

extension Alcohol {
  static func getAlcoholList() -> [Alcohol] {
    
    var alcohols: [Alcohol] = []
    
    let brands = DataManager.shered.brands
    
    let category = DataManager.shered.category
    let capacity = DataManager.shered.capacity
    let generalCapacity = DataManager.shered.generalCapacity
    
//    let iteretionCount = min(
//      brands.count,
//      category.count,
//      capacity.count,
//      generalCapacity.count
//    )
    
    for brand in brands.values {
      print(brand)
      
      for value in brand {
       
          for index in 0..<category.count {
          let alcohol = Alcohol(brands: value,
                                category: category[index],
                                capacity: capacity.randomElement() ?? "",
                                generalCapacity: generalCapacity.randomElement() ?? "")
          alcohols.append(alcohol)
        }
      }
    }
    
    return alcohols
  }
}


