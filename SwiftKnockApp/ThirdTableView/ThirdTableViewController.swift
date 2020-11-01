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
        
        switch titleString {
        case Struct.repeatFomartCollection.for_in_1.rawValue:
            for index in Struct.forCollection_1.allCases {
                thirdArray.append(index.rawValue)
            }
        case Struct.repeatFomartCollection.for_in_2.rawValue:
            for index in Struct.whileCollection.allCases {
                thirdArray.append(index.rawValue)
            }
        case Struct.genericsFomartCollection.generics_1.rawValue:
            for index in Struct.genericsFuncCollection.allCases {
                thirdArray.append(index.rawValue)
            }
        case Struct.genericsFomartCollection.generics_2.rawValue:
            for index in Struct.genericsClassCollection.allCases {
                thirdArray.append(index.rawValue)
            }
        default:
            return
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
        func segueQuestionView() {
            let storyboard = UIStoryboard.init(name: "QuestionView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "QuestionViewController") as! QuestionViewController
            vc.titleString = thirdArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
        func segeFourthTableView() {
            let storyboard = UIStoryboard.init(name: "FourthTableView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FourthTableViewController") as! FourthTableViewController
            vc.titleString = thirdArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
        switch titleString {
        case Struct.repeatFomartCollection.for_in_1.rawValue:
            if indexPath.row == 2 { // for コレクション
                segeFourthTableView()
            } else {
                segueQuestionView()
            }
        case Struct.repeatFomartCollection.for_in_2.rawValue:
            segueQuestionView()
        case Struct.genericsFomartCollection.generics_1.rawValue, Struct.genericsFomartCollection.generics_2.rawValue:
            segueQuestionView()
        default:
            return
        }
        
    }
    
}
