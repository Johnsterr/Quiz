//
//  ResultsViewController.swift
//  Quiz
//
//  Created by Евгений Пашко on 17.01.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var roleImage: UIImageView!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let answers: [Answer]
    
    init?(coder: NSCoder, _ answers: [Answer]) {
        self.answers = answers
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("\(#line) \(#function) init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.value > $1.value }.first!.key
        
        updateUI(with: mostCommonAnswer)
    }
    
    func updateUI(with role: RoleType) {
        roleImage.image = UIImage(named: "\(role.image)")
        roleLabel.text = "Ваша роль — \(role.type)!"
        descriptionLabel.text = role.definition
    }

}
