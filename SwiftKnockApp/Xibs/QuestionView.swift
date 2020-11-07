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
        case Struct.forCollection_1.for_in_1.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_1.rawValue
            answerLabel.text = Struct.Answer.for_in_1.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
        case Struct.forCollection_1.for_in_2.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_2.rawValue
            answerLabel.text = Struct.Answer.for_in_2.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
        case Struct.forCollection_2.for_in_3.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.text = Struct.ArrayState.for_in_3.rawValue
            answerLabel.text = Struct.Answer.for_in_3.rawValue
            statementLabel.isHidden = true
        case Struct.forCollection_2.for_in_4.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.text = Struct.ArrayState.for_in_4.rawValue
            statementLabel.text = Struct.forCollection_2.for_in_4.rawValue
            answerLabel.text = Struct.Answer.for_in_4.rawValue
        case Struct.forCollection_2.for_in_5.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_5.rawValue
            answerLabel.text = Struct.Answer.for_in_5.rawValue
        case Struct.forCollection_2.for_in_6.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_6.rawValue
            answerLabel.text = Struct.Answer.for_in_6.rawValue
        case Struct.forCollection_2.for_in_7.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.text = Struct.forCollection_2.for_in_7.rawValue
            answerLabel.text = Struct.Answer.for_in_7.rawValue
        case Struct.forCollection_1.for_in_4.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_8.rawValue
            answerLabel.text = Struct.Answer.for_in_8.rawValue
            questionTitleLabel2.isHidden = true
            statementLabel.isHidden = true
        case Struct.whileCollection.while_1.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.while_1.rawValue
            questionTitleLabel2.text = Struct.ArrayState.while_1.rawValue
            answerLabel.text = Struct.Answer.while_1.rawValue
            statementLabel.isHidden = true
        case Struct.whileCollection.while_2.rawValue:
            qestionTitleLabel.text = Struct.QestionTitle.while_2.rawValue
            questionTitleLabel2.text = Struct.ArrayState.while_2.rawValue
            answerLabel.text = Struct.Answer.while_2.rawValue
            statementLabel.isHidden = true
        case Struct.deferFomartCollection.defer_1.rawValue:
            qestionTitleLabel.text = Struct.Answer.defer_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.deferAnswerText.defer_1.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.deferFomartCollection.defer_2.rawValue:
            qestionTitleLabel.text = Struct.Answer.defer_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.deferAnswerText.defer_2.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.deferFomartCollection.defer_3.rawValue:
            qestionTitleLabel.text = Struct.Answer.defer_3.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.deferAnswerText.defer_3.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.genericsFuncCollection.generics_1.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsAnswerText.genercs_1.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.genericsFuncCollection.generics_2.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsAnswerText.genercs_2.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.genericsFuncCollection.generics_3.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsAnswerText.genercs_3.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.genericsFuncCollection.generics_4.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsAnswerText.genercs_4.rawValue
            textField.isHidden = true
            answerLabel.isHidden = true
            statementLabel.isHidden = true
        case Struct.genericsClassCollection.generics_1.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsSourceCode.generics_1.rawValue
            questionTitleLabel2.backgroundColor = .systemGray6
            textField.isHidden = true
            answerLabel.text = Struct.genericsAnswerText.genercs_5.rawValue
            statementLabel.isHidden = true
        case Struct.genericsClassCollection.generics_2.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsSourceCode.generics_2.rawValue
            questionTitleLabel2.backgroundColor = .systemGray6
            textField.isHidden = true
            answerLabel.text = Struct.genericsAnswerText.genercs_6.rawValue
            statementLabel.isHidden = true
        case Struct.genericsClassCollection.generics_3.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsSourceCode.generics_3.rawValue
            questionTitleLabel2.backgroundColor = .systemGray6
            textField.isHidden = true
            answerLabel.text = Struct.genericsAnswerText.genercs_7.rawValue
            statementLabel.isHidden = true
        case Struct.genericsClassCollection.generics_4.rawValue:
            qestionTitleLabel.text = Struct.Answer.generics_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.text = Struct.genericsSourceCode.generics_4.rawValue
            questionTitleLabel2.backgroundColor = .systemGray6
            textField.isHidden = true
            answerLabel.text = Struct.genericsAnswerText.genercs_8.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_1.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_1.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_2.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_2.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_3.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_3.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_3.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_4.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_4.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_4.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_5.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_5.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_5.rawValue
            statementLabel.isHidden = true
        case Struct.closureBasicCollection.closure_6.rawValue:
            qestionTitleLabel.text = Struct.closureBasicSourceCode.closure_6.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureBasicAnswerText.closure_6.rawValue
            statementLabel.isHidden = true
        case Struct.closureSytaxCollection.closure_1.rawValue:
            qestionTitleLabel.text = Struct.closureSyntaxSourceCode.closure_1.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureSytaxAnswerText.closure_1.rawValue
            statementLabel.isHidden = true
        case Struct.closureSytaxCollection.closure_2.rawValue:
            qestionTitleLabel.text = Struct.closureSyntaxSourceCode.closure_2.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureSytaxAnswerText.closure_2.rawValue
            statementLabel.isHidden = true
        case Struct.closureSytaxCollection.closure_3.rawValue:
            qestionTitleLabel.text = Struct.closureSyntaxSourceCode.closure_3.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureSytaxAnswerText.closure_3.rawValue
            statementLabel.isHidden = true
        case Struct.closureSytaxCollection.closure_4.rawValue:
            qestionTitleLabel.text = Struct.closureSyntaxSourceCode.closure_4.rawValue
            qestionTitleLabel.backgroundColor = .systemGray6
            questionTitleLabel2.isHidden = true
            textField.isHidden = true
            answerLabel.text = Struct.closureSytaxAnswerText.closure_4.rawValue
            statementLabel.isHidden = true
        default:
            return
        }
    }
 
}
