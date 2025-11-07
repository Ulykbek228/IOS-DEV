//
//  ViewController.swift
//  Asssignment6
//
//  Created by Ulykbek Bulgankhan on 25.10.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var MyTableView = UITableView()
    let identifier = "MyCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        createTable()
        
    }
    
    
    func createTable() {
        
        self.MyTableView = UITableView(frame: view.bounds, style: .plain)
        MyTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        self.MyTableView.delegate = self
        self.MyTableView.dataSource = self
        
        MyTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(MyTableView)
    
    }
    
    
    
    private func TableView(_ tableview: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 8
        default:
            break
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "section = \(indexPath.section) cell =  \(indexPath.row)"
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }


    
    enum Colors {
        case red
        case blue
        case pink
    }
    
}

//import SwiftUI
//#Preview {
//    ViewController()
//}
