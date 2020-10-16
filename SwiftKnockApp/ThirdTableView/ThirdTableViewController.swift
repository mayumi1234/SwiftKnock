//
//  ThirdTableViewController.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit

class ThirdTableViewController: UIViewController {
    
    @IBOutlet weak var thirdTableView: UITableView!
    
    var thirdArray = [String]()
    var titleString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdTableView.delegate = self
        thirdTableView.dataSource = self
        
        self.navigationItem.title = titleString
        
        for third in Struct.Third.allCases {
            thirdArray.append(third.rawValue)
        }
    }

}

extension ThirdTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thirdArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel!.text = thirdArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
        vc.index = indexPath.row
        vc.titleString = thirdArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
