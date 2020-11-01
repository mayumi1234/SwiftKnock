//
//  FourthTableViewController.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/24.
//

import UIKit

class FourthTableViewController: UIViewController {
    
    @IBOutlet weak var fourthTableView: UITableView!
    
    var fourthArray = [String]()
    var titleString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fourthTableView.delegate = self
        fourthTableView.dataSource = self
        
        self.navigationItem.title = titleString
        
        for index in Struct.forCollection_2.allCases {
            fourthArray.append(index.rawValue)
        }
    }

}

extension FourthTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fourthArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel!.text = fourthArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
        vc.titleString = fourthArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
