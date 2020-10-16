//
//  ViewController.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var array = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Swift Knock"
        
        for first in Struct.First.allCases {
            array.append(first.rawValue)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel!.text = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "SecondTableView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondTableViewController") as! SecondTableViewController
        vc.titleString = array[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

