//
//  QuestionView.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit
    
class QuestionView: UIView {
    
    @IBOutlet weak var qestionTitleLabel: UILabel!
    @IBOutlet weak var questionTitleLabel2: UILabel!
    @IBOutlet weak var statementLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    var titleString: String? {
        didSet {
            setup()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configure()
    }

    private func configure() {
        let view = Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    private func setup() {
        
        switch titleString {
        case "for-in レンジ（終了値を含まない）":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_1.rawValue
            answerLabel.text = Struct.Answer.for_in_1.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
        case "for-in レンジ（終了値を含む）":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_2.rawValue
            answerLabel.text = Struct.Answer.for_in_2.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
        case "コレクションから値を取り出す":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.text = Struct.ArrayState.for_in_3.rawValue
            answerLabel.text = Struct.Answer.for_in_3.rawValue
            statementLabel.isHidden = true
        case "全ての要素を取り出す":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.text = Struct.ArrayState.for_in_4.rawValue
            statementLabel.text = Struct.forCollection_2.for_in_4.rawValue
            answerLabel.text = Struct.Answer.for_in_4.rawValue
        case "全ての要素を取り出す（キーと値をタプルに代入する）":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_5.rawValue
            answerLabel.text = Struct.Answer.for_in_5.rawValue
        case "全てのキーを取り出す":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_6.rawValue
            answerLabel.text = Struct.Answer.for_in_6.rawValue
        case "全ての値を取り出す":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_7.rawValue
            answerLabel.text = Struct.Answer.for_in_7.rawValue
        case "for-in stride":
            qestionTitleLabel.text = Struct.QestionTitle.for_in_8.rawValue
            answerLabel.text = Struct.Answer.for_in_8.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.isHidden = true
        case "while":
            qestionTitleLabel.text = Struct.QestionTitle.while_1.rawValue
            questionTitleLabel2.text = Struct.ArrayState.while_1.rawValue
            answerLabel.text = Struct.Answer.while_1.rawValue
            statementLabel.isHidden = true
        case "while_repeat":
            qestionTitleLabel.text = Struct.QestionTitle.while_2.rawValue
            questionTitleLabel2.text = Struct.ArrayState.while_2.rawValue
            answerLabel.text = Struct.Answer.while_2.rawValue
            statementLabel.isHidden = true
        default:
            return
        }
    }
 
}
