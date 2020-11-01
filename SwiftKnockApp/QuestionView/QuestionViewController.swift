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

    @IBOutlet weak var formatTitleLabel: UILabel!
    @IBOutlet weak var formatLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var largeRedLabel: UILabel!
    @IBOutlet weak var smallRedLabel: UILabel!
    @IBOutlet weak var questionView: QuestionView?
    {
        didSet {
            questionView?.titleString = titleString
        }
    }
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var selectButtonA: UIButton!
    @IBOutlet weak var selectButtonB: UIButton!
    @IBOutlet weak var selectButtonC: UIButton!
    
    var titleString: String?
    var answerString: String?
    let absArray = ["A", "B", "C"]
    let defalutButtonColor = UIColor.hex(string: "#76D6FF", alpha: 1)
    let hilightButtonColor = UIColor.hex(string: "#79B6DA", alpha: 1)
    let buttonCornerRadius = CGFloat(5)
    let redLabelText = "選択肢の中から当てはまるものを選んでみよう！"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch titleString {
        case Struct.forCollection_1.for_in_1.rawValue:
            formatLabel.text = Struct.Format.for_in_1.rawValue
        case Struct.forCollection_1.for_in_2.rawValue:
            formatLabel.text = Struct.Format.for_in_2.rawValue
        case Struct.forCollection_2.for_in_3.rawValue, Struct.forCollection_2.for_in_4.rawValue, Struct.forCollection_2.for_in_5.rawValue, Struct.forCollection_2.for_in_6.rawValue, Struct.forCollection_2.for_in_7.rawValue:
            formatLabel.text = Struct.Format.for_in_3.rawValue
        case Struct.forCollection_1.for_in_4.rawValue:
            formatLabel.text = Struct.Format.for_in_4.rawValue
        case Struct.whileCollection.while_1.rawValue:
            formatLabel.text = Struct.Format.while_1.rawValue
        case Struct.whileCollection.while_2.rawValue:
            formatLabel.text = Struct.Format.while_2.rawValue
        case Struct.deferFomartCollection.defer_1.rawValue, Struct.deferFomartCollection.defer_2.rawValue:
            formatTitleLabel.isHidden = true
            largeRedLabel.text = redLabelText
            smallRedLabel.isHidden = true
            formatLabel.text = Struct.Format.defer_1.rawValue
            buttonStackView.isHidden = false
        case Struct.deferFomartCollection.defer_3.rawValue:
            formatTitleLabel.isHidden = true
            largeRedLabel.text = redLabelText
            smallRedLabel.isHidden = true
            formatLabel.text = Struct.Format.defer_3.rawValue
            buttonStackView.isHidden = false
        case Struct.genericsFuncCollection.generics_1.rawValue, Struct.genericsFuncCollection.generics_2.rawValue, Struct.genericsFuncCollection.generics_3.rawValue, Struct.genericsFuncCollection.generics_4.rawValue:
            largeRedLabel.text = redLabelText
            smallRedLabel.isHidden = true
            formatLabel.text = Struct.Format.generics_1.rawValue
            buttonStackView.isHidden = false
        case Struct.genericsClassCollection.generics_1.rawValue, Struct.genericsClassCollection.generics_2.rawValue, Struct.genericsClassCollection.generics_3.rawValue, Struct.genericsClassCollection.generics_4.rawValue:
            largeRedLabel.text = redLabelText
            smallRedLabel.isHidden = true
            formatLabel.text = Struct.Format.generics_2.rawValue
            buttonStackView.isHidden = false
        default:
            return
        }
        
        self.navigationItem.title = titleString
        submitButton.layer.cornerRadius = buttonCornerRadius
        selectButtonA.layer.cornerRadius = buttonCornerRadius
        selectButtonB.layer.cornerRadius = buttonCornerRadius
        selectButtonC.layer.cornerRadius = buttonCornerRadius
        selectButtonA.backgroundColor = defalutButtonColor
        selectButtonB.backgroundColor = defalutButtonColor
        selectButtonC.backgroundColor = defalutButtonColor
        selectButtonA.setTitleColor(.white, for: .normal)
        selectButtonB.setTitleColor(.white, for: .normal)
        selectButtonC.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func pushOnAButton(_ sender: Any) {
        selectButtonA.backgroundColor = hilightButtonColor
        selectButtonB.backgroundColor = defalutButtonColor
        selectButtonC.backgroundColor = defalutButtonColor
        answerString = absArray[0]
    }
    
    @IBAction func pushOnBButton(_ sender: Any) {
        selectButtonA.backgroundColor = defalutButtonColor
        selectButtonB.backgroundColor = hilightButtonColor
        selectButtonC.backgroundColor = defalutButtonColor
        answerString = absArray[1]
    }
    
    @IBAction func pushOnCButton(_ sender: Any) {
        selectButtonA.backgroundColor = defalutButtonColor
        selectButtonB.backgroundColor = defalutButtonColor
        selectButtonC.backgroundColor = hilightButtonColor
        answerString = absArray[2]
    }
    
    @IBAction func pushOnSubmitButton(_ sender: Any) {
        
        switch titleString {
        case Struct.forCollection_1.for_in_1.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_1.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_1.for_in_2.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_2.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_2.for_in_3.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_3.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_2.for_in_4.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_4.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_2.for_in_5.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_5.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_2.for_in_6.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_6.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_2.for_in_7.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_7.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.forCollection_1.for_in_4.rawValue:
            if questionView?.textField.text == Struct.AnswerText.for_in_8.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.whileCollection.while_1.rawValue:
            if questionView?.textField.text == Struct.AnswerText.while_1.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.whileCollection.while_2.rawValue:
            if questionView?.textField.text == Struct.AnswerText.while_2.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.deferFomartCollection.defer_1.rawValue, Struct.genericsFuncCollection.generics_1.rawValue, Struct.genericsFuncCollection.generics_4.rawValue, Struct.genericsClassCollection.generics_3.rawValue:
            if answerString == Struct.AnswerText.A.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.deferFomartCollection.defer_2.rawValue, Struct.genericsFuncCollection.generics_2.rawValue,Struct.genericsClassCollection.generics_1.rawValue, Struct.genericsClassCollection.generics_4.rawValue:
            if answerString == Struct.AnswerText.B.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        case Struct.deferFomartCollection.defer_3.rawValue, Struct.genericsFuncCollection.generics_3.rawValue, Struct.genericsClassCollection.generics_2.rawValue:
            if answerString == Struct.AnswerText.C.rawValue {
                HUD.flash(.labeledSuccess(title: Struct.correctOrNotcorrect.correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            } else {
                HUD.flash(.labeledError(title: Struct.correctOrNotcorrect.not_correct.rawValue, subtitle: ""), delay: TimeInterval(delayTime))
            }
        default:
            return
        }
    }
}
