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
    
    tableView.register(UINib(nibName: "LogDetailTextInputTableViewCell", bundle: nil), forCellReuseIdentifier: "textInput")
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "textInput", for: indexPath) as! LogDetailTextInputTableViewCell
    return cell
  }
}

extension LogDetailViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
}
