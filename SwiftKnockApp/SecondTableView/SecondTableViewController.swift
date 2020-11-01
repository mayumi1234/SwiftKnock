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
        
        switch titleString {
        case Struct.First.for_in_1.rawValue:
            for index in Struct.repeatFomartCollection.allCases {
                secondArray.append(index.rawValue)
            }
        case Struct.First.defer_sentence.rawValue:
            for index in Struct.deferFomartCollection.allCases {
                secondArray.append(index.rawValue)
            }
        case Struct.First.generics.rawValue:
            for index in Struct.genericsFomartCollection.allCases {
                secondArray.append(index.rawValue)
            }
        default:
            return
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
        switch titleString {
        case Struct.First.for_in_1.rawValue, Struct.First.generics.rawValue:
            let storyboard = UIStoryboard.init(name: "ThirdTableView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
            vc.titleString = secondArray[indexPath.row]
            vc.index = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        case Struct.First.defer_sentence.rawValue:
            let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
            vc.titleString = secondArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        default:
            return
        }
    }
}
