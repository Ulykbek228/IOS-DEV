//
//  ViewController.swift
//  Assignment61
//
//  Created by Ulykbek Bulgankhan on 29.10.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    let identifier = "MyCell"
    var array = ["1", "2", "3", "4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func editTable(_ sender: Any) {
        myTableView.isEditing = !myTableView.isEditing
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        let number = array[indexPath.row]
        cell.textLabel?.text = number

        return cell

    }

    func tableView(_ tableView: UITableView, editing§StyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete

    }
    table
    



}

