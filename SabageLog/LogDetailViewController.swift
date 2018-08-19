//
//  LogDetailViewController.swift
//  SabageLog
//
//  Created by kazumi hayashida on 2018/08/05.
//  Copyright © 2018年 kazumi hayashida. All rights reserved.
//

import UIKit

class LogDetailViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController!.navigationBar.topItem!.title = "戻る"
  }
}

extension LogDetailViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LogListTableViewCell
//    cell.gameFiled = "TAF Zone"
//    cell.date = Date()
    return UITableViewCell()
  }
}
