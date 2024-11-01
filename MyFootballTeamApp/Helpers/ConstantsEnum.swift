//
//  ConstantsEnum.swift
//  MyFootballTeamApp
//
//  Created by Никита Козловский on 31.10.2024.
//

import UIKit

enum MockDataEnums {
    static let menu: [String] = ["Таблица", "Календарь", "Состав команды", "Топ бомбардиров", "Топ ассистентов"]
    
    static let homeTeam: [String] = [
        "Боавишта", "Спарта Москва", "Боавишта", "Хаджиме", "Боавишта", "Эдельвейс Юг", "Боавишта"
    ]
    
    static let guestTeam: [String] = [
        "Кентавр", "Боавишта", "Молоково", "Боавишта", "Орехово Юг", "Боавишта", "Пассага"
    ]
    
    static let tourNumber: [Int] = [25, 26, 27, 28, 29, 30, 31]

}

enum PlayersMockData {
    
    static let players: [PlayerModel] = [
        PlayerModel(photo: UIImage(named: "Алексей") ?? UIImage(), name: "МОСКВИН АЛЕКСЕЙ АНТОНОВИЧ", age: "27.08.1999", position: "Защитник", playedMatches: "4", goals: "0", assists: "0"),
        PlayerModel(photo: UIImage(named: "Антон") ?? UIImage(), name: "НИКИТИН АНТОН ПАВЛОВИЧ", age: "22.07.1983", position: "Защитник", playedMatches: "20", goals: "0", assists: "0"),
        PlayerModel(photo: UIImage(named: "Олейник") ?? UIImage(), name: "ОЛЕЙНИК НИКИТА АЛЕКСЕЕВИЧ", age: "27.08.1994", position: "Нападающий", playedMatches: "22", goals: "6", assists: "5"),
        PlayerModel(photo: UIImage(named: "СаняФ") ?? UIImage(), name: "ФЕДУЛИН АЛЕКСАНДР ВЛАДИМИРОВИЧ", age: "24.06.1992", position: "Защитник", playedMatches: "20", goals: "6", assists: "7"),
        PlayerModel(photo: UIImage(named: "Кирилл") ?? UIImage(), name: "СТОЛОНОГОВ КИРИЛЛ АНДРЕЕВИЧ", age: "28.06.2003", position: "Вратарь", playedMatches: "16", goals: "0", assists: "1"),
        PlayerModel(photo: UIImage(named: "МаксФил") ?? UIImage(), name: "ФИЛИППОВ МАКСИМ ВЛАДИМИРОВИЧ", age: "16.03.2005", position: "Вратарь", playedMatches: "19", goals: "9", assists: "0"),
        PlayerModel(photo: UIImage(named: "ДавидА") ?? UIImage(), name: "АРАКЕЛЯН ДАВИД АРТУРОВИЧ", age: "10.12.2002", position: "Защитник", playedMatches: "8", goals: "1", assists: "0"),
        PlayerModel(photo: UIImage(named: "Крепыш") ?? UIImage(), name: "КАРПУХИН СЕРГЕЙ ОЛЕГОВИЧ", age: "10.02.1988", position: "Защитник", playedMatches: "14", goals: "3", assists: "0"),
        PlayerModel(photo: UIImage(named: "Дьяк") ?? UIImage(), name: "ДЬЯКОВ ДМИТРИЙ ЮРЬЕВИЧ", age: "01.06.1999", position: "Защитник", playedMatches: "14", goals: "1", assists: "1"),
        PlayerModel(photo: UIImage(named: "Муртуз") ?? UIImage(), name: "МУСАЕВ МУРТАЗАЛИ МУСАЕВИЧ", age: "07.06.1999", position: "Защитник", playedMatches: "4", goals: "0", assists: "0"),
        PlayerModel(photo: UIImage(named: "Фара") ?? UIImage(), name: "ШАРИФОВ ФАРРУХ ГУЛМАХМАДОВИЧ", age: "21.03.1990", position: "Защитник", playedMatches: "9", goals: "4", assists: "0"),
        PlayerModel(photo: UIImage(named: "Вальк") ?? UIImage(), name: "ВАЛЬКОВАННЫЙ СЕРГЕЙ ВИКТОРОВИЧ", age: "05.04.1991", position: "Защитник", playedMatches: "4", goals: "0", assists: "1"),
        PlayerModel(photo: UIImage(named: "Тимур") ?? UIImage(), name: "КРАСОВСКИЙ ТИМУР АНДРЕЕВИЧ", age: "09.11.1997", position: "Защитник", playedMatches: "5", goals: "0", assists: "3"),
        PlayerModel(photo: UIImage(named: "Дятлов") ?? UIImage(), name: "ДЯТЛОВ НИКИТА ЮРЬЕВИЧ", age: "11.02.1994", position: "Полузащитник", playedMatches: "1", goals: "0", assists: "1"),
        PlayerModel(photo: UIImage(named: "Глеб") ?? UIImage(), name: "СТРЕЛЬНИКОВ ГЛЕБ РОМАНОВИЧ", age: "06.07.1992", position: "Защитник", playedMatches: "0", goals: "0", assists: "0"),
        PlayerModel(photo: UIImage(named: "Овсян") ?? UIImage(), name: "ОВСЯННИКОВ АЛЕКСАНДР ОЛЕГОВИЧ", age: "07.05.1995", position: "Нападающий", playedMatches: "3", goals: "1", assists: "0"),
        PlayerModel(photo: UIImage(named: "Жел") ?? UIImage(), name: "ЖЕЛОНКИН НИКИТА СЕРГЕЕВИЧ", age: "10.05.1994", position: "Полузащитник", playedMatches: "19", goals: "7", assists: "9"),
        PlayerModel(photo: UIImage(named: "Козел") ?? UIImage(), name: "КОЗЛОВСКИЙ НИКИТА ВЛАДИСЛАВОВИЧ", age: "13.11.2000", position: "Полузащитник", playedMatches: "17", goals: "0", assists: "1"),
        PlayerModel(photo: UIImage(named: "Егор") ?? UIImage(), name: "КОСЯКИН ЕГОР СЕРГЕЕВИЧ", age: "10.01.2001", position: "Полузащитник", playedMatches: "3", goals: "1", assists: "0"),
        PlayerModel(photo: UIImage(named: "Старый") ?? UIImage(), name: "ДЕНИСОВ СЕРГЕЙ ЕВГЕНЬЕВИЧ", age: "23.07.1982", position: "Полузащитник", playedMatches: "20", goals: "5", assists: "2"),
        PlayerModel(photo: UIImage(named: "СаняС") ?? UIImage(), name: "САВЁЛОВ АЛЕКСАНДР МИХАЙЛОВИЧ", age: "28.10.1988", position: "Нападающий", playedMatches: "7", goals: "8", assists: "2"),
        PlayerModel(photo: UIImage(named: "Холод") ?? UIImage(), name: "ГОЛЕТИАНИ ДАВИД ГОЧЕВИЧ", age: "28.10.1995", position: "Полузащитник", playedMatches: "4", goals: "0", assists: "0"),
        PlayerModel(photo: UIImage(named: "ДаняА") ?? UIImage(), name: "АВЕДЬЯН ДАНИИЛ АШОТОВИЧ", age: "17.07.2000", position: "Защитник", playedMatches: "3", goals: "2", assists: "1"),
    ]
}
