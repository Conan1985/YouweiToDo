//
//  ViewController.swift
//  YouweiToDo
//
//  Created by Youwei Lu on 7/12/18.
//  Copyright © 2018 Youwei Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    let todoList = ToDoList();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        print("Add toDo item: \(String(describing: itemTextField.text))")
        let todo = itemTextField.text
        todoList.add(todo!)
        tableView.reloadData()
    }

}

