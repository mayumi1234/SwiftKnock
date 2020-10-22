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
    @IBOutlet weak var addQuestionView: UIView!
    
    var index: Int?
    var titleString: String?
    
    private lazy var questionView: QuestionView = {
        let view = QuestionView(index: index)
        view.frame = .init(x: addQuestionView.frame.minX, y: addQuestionView.frame.minY, width: addQuestionView.frame.width, height: addQuestionView.frame.height)
        view.delegate = self
        view.index = index
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "QuestionView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        questionView.addSubview(view)
        
        switch index {
        case 0:
            formatLabel.text = Struct.Format.for_in_1.rawValue
        case 1:
            formatLabel.text = Struct.Format.for_in_2.rawValue
            
        case 2:
            formatLabel.text = Struct.Format.for_in_3.rawValue
        case 3:
            formatLabel.text = Struct.Format.for_in_3.rawValue
        default:
            return
        }
        
        self.navigationItem.title = titleString
        submitButton.layer.cornerRadius = 5
//        smallRedLabel.isHidden = true
    }

    @IBAction func pushOnSubmitButton(_ sender: Any) {
        
        switch index {
        case 0:
            if questionView.textField!.text == Struct.AnswerText.for_in_1.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case 1:
            if questionView.textField!.text == Struct.AnswerText.for_in_2.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case 2:
            if questionView.textField!.text == Struct.AnswerText.for_in_3.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        case 3:
            if questionView.textField!.text == Struct.AnswerText.for_in_4.rawValue {
                HUD.flash(.labeledSuccess(title: "正解！", subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: "不正解！", subtitle: ""), delay: TimeInterval(delayTime))
            }
        default:
            return
        }
        
    }
}

extension QuestionViewController: QuestionViewDelegate {
    func tappedSubmitButton(text: String) {
        
    }
}
