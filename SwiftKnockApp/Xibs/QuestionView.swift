//
//  QuestionView.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/20.
//

import UIKit
import SnapKit

protocol QuestionViewDelegate: class {
    func tappedSubmitButton(text: String)
}

class QuestionView: UIView {
    
    let stackView: UIStackView? = UIStackView()
    let questionTitleLabel: UILabel? = UILabel()
    let questionTitleLabel2: UILabel? = UILabel()
    let statementLabel: UILabel? = UILabel()
    let textField: UITextField? = UITextField()
    let answerLabel: UILabel? = UILabel()
    
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
        let view = Bundle.main.loadNibNamed("QuestionView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    private func setup() {
        guard let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: nil, options: nil)?.first as? UIView else { return }
        
        view.addSubview(stackView!)
        stackView!.addSubview(questionTitleLabel!)
        stackView!.addSubview(questionTitleLabel2!)
        stackView!.addSubview(statementLabel!)
        stackView!.addSubview(textField!)
        stackView!.addSubview(answerLabel!)
        
        view.snp.makeConstraints { make in
            make.width.equalTo(403)
            make.height.equalTo(184)
        }
        stackView!.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            make.edges.equalToSuperview()
        }
        
        view.backgroundColor = .white
        stackView!.backgroundColor = .white
        stackView!.axis = .vertical
        stackView!.alignment = .fill
        stackView!.distribution = .fill
        [
            questionTitleLabel,
            questionTitleLabel2,
            statementLabel,
            textField,
            answerLabel
        ].forEach {
            $0!.backgroundColor = .white
        }
        
        switch index {
        case 0:
            questionTitleLabel!.text = Struct.QestionTitle.for_in_1.rawValue
            answerLabel!.text = Struct.Answer.for_in_1.rawValue
            statementLabel!.isHidden = true
            questionTitleLabel2!.isHidden = true
        case 1:
            questionTitleLabel!.text = Struct.QestionTitle.for_in_2.rawValue
            answerLabel!.text = Struct.Answer.for_in_2.rawValue
            statementLabel!.isHidden = true
            questionTitleLabel2!.isHidden = true
            
        case 2:
            questionTitleLabel!.text = Struct.QestionTitle.for_in_3.rawValue
            statementLabel!.text = Struct.ArrayState.for_in_3.rawValue
            answerLabel!.text = Struct.Answer.for_in_3.rawValue
            statementLabel!.isHidden = false
            questionTitleLabel2!.isHidden = true
        case 3:
            questionTitleLabel!.text = Struct.QestionTitle.for_in_4.rawValue
            statementLabel!.text = Struct.ArrayState.for_in_4.rawValue
            answerLabel!.text = Struct.Answer.for_in_4.rawValue
            questionTitleLabel2!.text = Struct.QestionTitle2.for_in_4.rawValue
            statementLabel!.isHidden = false
            questionTitleLabel2!.isHidden = true
        default:
            return
        }
    }

}
