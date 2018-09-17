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
  
  var detailItems: [LogDetailItemModel.Category] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController!.navigationBar.topItem!.title = "戻る"
    
    tableView.register(UINib(nibName: "LogDetailTextInputTableViewCell", bundle: nil), forCellReuseIdentifier: "textInput")
    
    // TODO Dummy data
    detailItems.append(.date)
    detailItems.append(.potition)
    detailItems.append(.memberNumber)
    detailItems.append(.gameCount)
    detailItems.append(.usedGun)
    detailItems.append(.kill)
    detailItems.append(.death)
  }
}

extension LogDetailViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return detailItems.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "textInput", for: indexPath) as! LogDetailTextInputTableViewCell
    cell.titleLabel.text = LogDetailItemModel.title(category: detailItems[indexPath.row])
    return cell
  }
}

extension LogDetailViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
}
