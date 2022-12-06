//
//  DataManager.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 28/11/2022.
//

class DataManager {
  
  static let shered = DataManager()
  
  let brands: [String:[String]] = ["brandsOfWodka": ["Tito’s Handmad Vodka", "Smirnoff", "New Amsterdam Vodka",
                                                     "Svedka", "Absolut","Ketel One Vodka"],
                                   "brandsOfWhiskey": ["Jim Beam Family", "Jack Daniels", "Jameson",
                                                       "Crown Royal", "Evan Willaims"],
                                   "brandsOfRum": ["Malibu", "Bacardi", "Captain Morgan"],
                                   "brandsOfBrandyAndCognac": ["E & J", "Hennessy"],
                                   "brandsOfTequila": ["Jose Cuervo", "Patron"]]
  
  let category = ["Vodka", "Rum", "Whiskey",
                  "Cordials and Liqueurs",
                  "Tequila", "Brandy & Cognac"]
  
  let capacity = ["0.3", "0.5", "0.7", "1.0", "5.0", "10.0"]
  
  let generalCapacity = ["5", "10", "1", "30", "15", "3"]
  
  private init() {}
}
