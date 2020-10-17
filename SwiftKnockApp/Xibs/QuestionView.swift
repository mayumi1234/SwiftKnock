//
//  QuestionView.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import UIKit

protocol QuestionViewDelegate: class {
    func tappedSubmitButton(text: String)
}
    
class QuestionView: UIView {
    
    @IBOutlet weak var qestionTitleLabel: UILabel!
    @IBOutlet weak var questionTitleLabel2: UILabel!
    @IBOutlet weak var statementLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    weak var delegate: QuestionViewDelegate?
    
    var index: Int?
    
    convenience init(index: Int?) {
        self.init(frame: .zero)
        
        self.index = index
        configure()
        setup()
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
//        let nib = UINib(nibName: "QuestionView", bundle: nil)
//        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
//        view.frame = self.bounds
//        self.addSubview(view)
        
        let view = Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    private func setup() {
        switch index {
        case 0:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_1.rawValue
            answerLabel.text = Struct.Answer.for_in_1.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
        case 1:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_2.rawValue
            answerLabel.text = Struct.Answer.for_in_2.rawValue
            statementLabel.isHidden = true
            questionTitleLabel2.isHidden = true
            
        case 2:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_3.rawValue
            statementLabel.text = Struct.ArrayState.for_in_3.rawValue
            answerLabel.text = Struct.Answer.for_in_3.rawValue
            statementLabel.isHidden = false
            questionTitleLabel2.isHidden = true
        case 3:
            qestionTitleLabel.text = Struct.QestionTitle.for_in_4.rawValue
            statementLabel.text = Struct.ArrayState.for_in_4.rawValue
            answerLabel.text = Struct.Answer.for_in_4.rawValue
            questionTitleLabel2.text = Struct.QestionTitle2.for_in_4.rawValue
            statementLabel.isHidden = false
            questionTitleLabel2.isHidden = true
        default:
            return
        }
    }

}
