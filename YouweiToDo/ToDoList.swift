//
//  ToDoList.swift
//  YouweiToDo
//
//  Created by Youwei Lu on 7/12/18.
//  Copyright © 2018 Youwei Lu. All rights reserved.
//

import UIKit

class ToDoList: NSObject {
    fileprivate var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }
}

extension ToDoList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel!.text = item;
        return cell
    }
}
