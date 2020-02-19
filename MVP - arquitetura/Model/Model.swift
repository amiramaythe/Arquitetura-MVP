//
//  mODEL.swift
//  MVP - arquitetura
//
//  Created by Amira Maythe Vasquez on 15/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import Foundation

struct Filme: Decodable {
    let nome1: String
    let nome2: String
    let nome3: String
    let nome4: String


    //converter o nome do JSON
    private enum CodingKeys: String, CodingKey {

        case nome1 = "+1"
        case nome2 = "-1"
        case nome3 = "100"
        case nome4 = "1234"
    }
}



