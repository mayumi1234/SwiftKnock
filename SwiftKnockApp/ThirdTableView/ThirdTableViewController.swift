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
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdTableView.delegate = self
        thirdTableView.dataSource = self
        
        self.navigationItem.title = titleString
        
        if index == 0 {
            for index in Struct.forCollection_1.allCases {
                thirdArray.append(index.rawValue)
            }
        } else if index == 1 {
            for index in Struct.whileCollection.allCases {
                thirdArray.append(index.rawValue)
            }
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
        // forのとき
        if titleString == Struct.repeatFomartCollection.for_in_1.rawValue {
            if indexPath.row == 2 { // for コレクション
                let storyboard = UIStoryboard.init(name: "FourthTableView", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "FourthTableViewController") as! FourthTableViewController
                vc.titleString = thirdArray[indexPath.row]
                navigationController?.pushViewController(vc, animated: true)
            } else {
                let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
                vc.titleString = thirdArray[indexPath.row]
                navigationController?.pushViewController(vc, animated: true)
            }
        } else {
            let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
            vc.titleString = thirdArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
