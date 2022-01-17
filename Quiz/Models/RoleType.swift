//
//  AnimalType.swift
//  Quiz
//
//  Created by Евгений Пашко on 17.01.2022.
//

import UIKit

enum RoleType: Character {
    case tank = "🛡"
    case assassin = "🗡"
    case marksman = "🏹"
    case mage = "🔮"
    
    var type: String {
        switch self {
        case .tank:
            return "Танк"
        case .assassin:
            return "Ассассин"
        case .marksman:
            return "Стрелок"
        case .mage:
            return "Маг"
        }
    }
    
    var image: String {
        switch self {
        case .tank:
            return "Tank.png"
        case .assassin:
            return "Assassin.png"
        case .marksman:
            return "Marksman.png"
        case .mage:
            return "Mage.png"
        }
    }
    
    var definition: String {
        switch self {
        case .tank:
            return "Очевидно вы - лидер. Ваши качества позволяют вести за собой других членов команды, но все же вы полагаетесь на их помощь. Без поддержки у вас, скорее всего, не получится свернуть горы."
        case .assassin:
            return "Вы предпочитаете наносить точные и молниеносные удары. А после - резко уйти в тень и скрыться. Мастерство убийцы говорит о том, что вы полагаетесь на собственные силы, чтобы выйти победителем."
        case .marksman:
            return "Вы предпочитаете иметь рядом с собой надежных товарищей. Доверие и знание на кого можно положиться имеют для вас не малое значение. За товарищей - вы готовы идти в бой до самого конца."
        case .mage:
            return "Вы живете в мире волшебства и фантазий. Однако научились контролировать тайные знания. Силы стихий, подконтрольные вам, являются грозным оружием против врагов."
        }
    }
}
