//
//  Presenter.swift
//  MVP - arquitetura
//
//  Created by Amira Maythe Vasquez on 15/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import Foundation

class FilmePresenter {

    var delegate: FilmesRequest?


    //função do delegate
    func movieRequest(){
        let urlmovies = URL(string: "https://api.github.com/emojis")!
        var urlRequest = URLRequest(url: urlmovies)
        urlRequest.httpMethod = "GET"
       

        //converter o JSON
        let decoder = JSONDecoder()

        //fazendo tratamento da requisição
       let dataTesk =  URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in

        let result = try! decoder.decode(Filme.self, from: data!)
        self.delegate?.movieRequest(filmes: [result])
        }
        //executar
        dataTesk.resume()
    }
}
