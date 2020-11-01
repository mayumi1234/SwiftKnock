//
//  QuestionViewController.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit
import PKHUD

let delayTime = 2

class QuestionViewController: UIViewController {

    @IBOutlet weak var formatLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var smallRedLabel: UILabel!
    @IBOutlet weak var questionView: QuestionView?
    {
        didSet {
            questionView?.titleString = titleString
        }
    }
    var titleString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch titleString {
        case "for-in レンジ（終了値を含まない）":
            formatLabel.text = Struct.Format.for_in_1.rawValue
        case "for-in レンジ（終了値を含む）":
            formatLabel.text = Struct.Format.for_in_2.rawValue
        case "コレクションから値を取り出す", "全ての要素を取り出す", "全ての要素を取り出す（キーと値をタプルに代入する）", "全てのキーを取り出す", "全ての値を取り出す":
            formatLabel.text = Struct.Format.for_in_3.rawValue
        case "for-in stride":
            formatLabel.text = Struct.Format.for_in_4.rawValue
        case "while":
            formatLabel.text = Struct.Format.while_1.rawValue
        case "while_repeat":
            formatLabel.text = Struct.Format.while_2.rawValue
        default:
            return
        }
        
        self.navigationItem.title = titleString
        submitButton.layer.cornerRadius = 5
    }

    @IBAction func pushOnSubmitButton(_ sender: Any) {
        
        switch titleString {
        case "for-in レンジ（終了値を含まない）":
            if questionView?.textField.text == Struct.AnswerText.for_in_1.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "for-in レンジ（終了値を含む）":
            if questionView?.textField.text == Struct.AnswerText.for_in_2.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "コレクションから値を取り出す":
            if questionView?.textField.text == Struct.AnswerText.for_in_3.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "全ての要素を取り出す":
            if questionView?.textField.text == Struct.AnswerText.for_in_4.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "全ての要素を取り出す（キーと値をタプルに代入する）":
            if questionView?.textField.text == Struct.AnswerText.for_in_5.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "全てのキーを取り出す":
            if questionView?.textField.text == Struct.AnswerText.for_in_6.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "全ての値を取り出す":
            if questionView?.textField.text == Struct.AnswerText.for_in_7.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "for-in stride":
            if questionView?.textField.text == Struct.AnswerText.for_in_8.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "while":
            if questionView?.textField.text == Struct.AnswerText.while_1.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case "while_repeat":
            if questionView?.textField.text == Struct.AnswerText.while_2.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        default:
            return
        }

    }
}
