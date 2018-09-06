//
//  SearchTableViewController.swift
//  FlareAssesment
//
//  Created by Mohammed Ennabah on 9/4/18.
//  Copyright © 2018 Mohammed Ennabah. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {
  
  private let searchItems: [String] = ["302", "110", "101", "1000", "511", "974", "666", "346", "478", "892", "951", "1173", "7452", "328"]
  
  private lazy var searchBar = UISearchBar(frame: CGRect.zero)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    searchBar.placeholder = "Search"
    searchBar.keyboardType = .numberPad
    navigationItem.titleView = searchBar
    searchBar.becomeFirstResponder()
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MYCELLReuseId")
    
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.searchItems.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MYCELLReuseId", for: indexPath)
    cell.textLabel?.text = searchItems[indexPath.row]
    return cell
  }
  
}
