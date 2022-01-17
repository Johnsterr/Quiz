//
//  Question.swift
//  Quiz
//
//  Created by Евгений Пашко on 17.01.2022.
//

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
    static let all: [Question] = [
        Question(text: "Какое оружие предпочитаете?", type: .single, answers: [
            Answer(text: "Холодное", type: .tank),
            Answer(text: "Биологическое", type: .assassin),
            Answer(text: "Огнестрельное", type: .marksman),
            Answer(text: "Собственный интеллект", type: .mage),
        ]),
        Question(text: "Стиль боя присущий вам?", type: .multiple, answers: [
            Answer(text: "Атакующий", type: .mage),
            Answer(text: "Зависит от врага", type: .assassin),
            Answer(text: "Стратегический", type: .marksman),
            Answer(text: "Защищающий", type: .tank),
        ]),
        Question(text: "Вы всегда рветесь вперед?", type: .range, answers: [
            Answer(text: "Не про меня", type: .assassin),
            Answer(text: "Почти никогда", type: .marksman),
            Answer(text: "Изредка", type: .mage),
            Answer(text: "Абсолютно", type: .tank),
        ]),
    ]
}
