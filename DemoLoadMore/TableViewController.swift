//
//  TableViewController.swift
//  DemoLoadMore
//
//  Created by tham gia huy on 5/16/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayNumber = [Int](1...20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastElement = arrayNumber.count - 1
        if indexPath.row == lastElement {
            loadMoreData()
        }
    }
    
    func loadMoreData() {
        for number in 1...5 {
            arrayNumber.append(number)
            tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNumber.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(arrayNumber[indexPath.row])"
        return cell
    }
    
}
