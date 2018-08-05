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
  
  @IBAction func addLogAction(_ sender: UIButton) {
    let logItem = LogItemModel()
    logItem.title = "test"
    let realm = try! Realm()
    try! realm.write {
      realm.add(logItem)
    }
    
    tableView.reloadData()
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

extension LogListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let storyborad = UIStoryboard(name: "Main", bundle: nil)
    let logListViewController = storyborad.instantiateViewController(withIdentifier: "LogListViewController")
    navigationController?.pushViewController(logListViewController, animated: true)
  }
}
