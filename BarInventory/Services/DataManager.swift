//
//  DataManager.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 28/11/2022.
//

class DataManager {
  
  static let shered = DataManager()
  
  let brandsOfVodka = ["Tito’s Handmade Vodka", "Smirnoff",
                       "New Amsterdam Vodka", "Svedka", "Absolut",
                       "Ketel One Vodka"]
  
  let brandsOfWhiskey = ["Jim Beam Family", "Jack Daniels",
                         "Jameson", "Crown Royal", "Evan Willaims"]
  
  let brandsOfRum = ["Malibu", "Bacardi", "Captain Morgan"]
  
  let brandsOfBrandyAndCognac = ["E & J", "Hennessy"]
  
  let brandsOfTequila = ["Jose Cuervo", "Patron"]
  
  let category = ["Vodka", "Rum", "Whiskey",
                  "Cordials and Liqueurs",
                  "Tequila", "Brandy & Cognac"]
  
  let capacity = ["0.5", "0.7", "1.0"]
  
  let generalCapacity = ["5", "10", "1", "30"]
  
  private init() {}
}
