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
        
        for index in Struct.repeatFomartCollection.allCases {
            secondArray.append(index.rawValue)
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
        if indexPath.row == 0 { //　for文
            let storyboard = UIStoryboard.init(name: "ThirdTableView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
            vc.titleString = secondArray[indexPath.row]
            vc.index = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 1 { // while文
            let storyboard = UIStoryboard.init(name: "ThirdTableView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
            vc.titleString = secondArray[indexPath.row]
            vc.index = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
