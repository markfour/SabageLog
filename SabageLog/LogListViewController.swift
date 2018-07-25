//
//  LogListViewController.swift
//  SabageLog
//
//  Created by kazumi hayashida on 2018/05/30.
//  Copyright © 2018年 kazumi hayashida. All rights reserved.
//

import UIKit
import RealmSwift

class LogListViewController: UIViewController {
  @IBOutlet private weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.register(UINib(nibName: "LogListTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
  }
}

extension LogListViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let realm = try! Realm()
    return realm.objects(LogItemModel.self).count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LogListTableViewCell
    cell.gameFiled = "TAF Zone"
    cell.date = Date()
    return cell
  }
}
