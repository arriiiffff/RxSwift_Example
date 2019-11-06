//
//  ViewController.swift
//  RxExample
//
//  Created by Wowo Diergo Suciawo on 9/26/19.
//  Copyright © 2019 Tokopedia. All rights reserved.
//

import UIKit
import RxSwift

internal struct Employee {
    internal let name: String
    internal let age: String
    internal let position: String
}

class ViewController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private let searchTextInput: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Search employee name"
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        return textField
    }()
    
    private let buttonSearch = UIButton.init(type: .system)
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name: -"
        return label
    }()
    
    private lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Age: -"
        return label
    }()
    
    private lazy var positionLabel: UILabel = {
        let label = UILabel()
        label.text = "Position: -"
        return label
    }()
    
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        // TODO: init data employe
    }
    
    // MARK: Function setup view
    private func setupView() {
        title = "Learn RxCocoa"
        view.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        stackView.addArrangedSubview(searchTextInput)
        stackView.addArrangedSubview(buttonSearch)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(ageLabel)
        stackView.addArrangedSubview(positionLabel)
        
        self.view.addSubview(stackView)
        
        buttonSearch.setTitle("Search", for: .normal)
        buttonSearch.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
    }


}

