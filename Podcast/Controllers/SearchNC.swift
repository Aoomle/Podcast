//
//  SearchNC.swift
//  Podcast
//
//  Created by Abdulmalik Muhammad on 21/05/2020.
//  Copyright © 2020 aoomle. All rights reserved.
//

import UIKit

class SearchNC: UITableViewController {
  
  let podcast = [
      Podcast(name: "Aoomle Podcast", aristsName: "Abdulmalik Muhammad"),
      Podcast(name: "Sean Allen", aristsName: "Some podcast")
  ]
  let cellID = "cellID"
  
  let searchController = UISearchController(searchResultsController: nil)
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViewController()
  }
  
  //:MARK:- Setup Functions
  fileprivate func setupViewController() {
      view.backgroundColor = .systemBackground
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    navigationItem.searchController = searchController
    navigationItem.hidesSearchBarWhenScrolling = false
    
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return podcast.count
  }
 
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
    let podcaster = podcast[indexPath.row]
    cell.textLabel?.text = "\(podcaster.name)\n\(podcaster.aristsName)"
    cell.textLabel?.numberOfLines = -1
    cell.imageView?.image = #imageLiteral(resourceName: "appicon")
    
    return cell
  }
  
}
