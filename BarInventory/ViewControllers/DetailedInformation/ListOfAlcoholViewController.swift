//
//  ListOfAlcoholViewController.swift
//  BarInventory
//
//  Created by Евгений  Гравдин  on 27/11/2022.
//

import UIKit

class ListOfAlcoholViewController: UITableViewController {
    
    var alcoholOne: [Alcohol]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      alcoholOne.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let currentCell = tableView.dequeueReusableCell(withIdentifier: "showMoreAlco", for: indexPath)
              
              let alcoholList = alcoholOne[indexPath.row]
      

              var content = currentCell.defaultContentConfiguration()
              
              content.text = alcoholList.categoryOfAlcohol
              currentCell.contentConfiguration = content
                   

              return currentCell
    }
    
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let alcoholList = alcoholOne[indexPath.row]
  }
  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      guard let indexPath = tableView.indexPathForSelectedRow else { return }
      guard let alcoholTypes = segue.destination as? TypesOfAlcoholViewController else { return }
      
      let alco = alcoholOne
      alcoholTypes.alcoholTwo = alco
    }

}
