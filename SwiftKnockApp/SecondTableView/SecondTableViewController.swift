//
//  ViewController.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit

class SecondTableViewController: UIViewController {
    
    @IBOutlet weak var secondTableView: UITableView!
    var secondArray = [String]()
    var titleString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondTableView.delegate = self
        secondTableView.dataSource = self
        
        self.navigationItem.title = titleString
        
        for second in Struct.Second.allCases {
            secondArray.append(second.rawValue)
        }
    }

}

extension SecondTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel!.text = secondArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "ThirdTableView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
        vc.titleString = secondArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
