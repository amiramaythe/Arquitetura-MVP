//
//  ViewController.swift
//  MVP - arquitetura
//
//  Created by Amira Maythe Vasquez on 15/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

//protocolo utilizado
protocol FilmesRequest {
    func movieRequest(filmes: [Filme])
}


class FilmesViewController: UITableViewController, FilmesRequest {

    var filmes: [Filme] = []
    let presenter = FilmePresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
        presenter.movieRequest()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmeItem", for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = filmes.first?.nome1
        case 1:
            cell.textLabel?.text = filmes.first?.nome2
        case 2:
            cell.textLabel?.text = filmes.first?.nome3
        case 4:
            cell.textLabel?.text = filmes.first?.nome4
        default:
            break
        }
//        cell.textLabel?.text = filmes[indexPath.row].nome
        return cell
    }


    func movieRequest(filmes: [Filme]) {
        self.filmes = filmes
        //recarregar com os daddos que estão passando
        tableView.reloadData()
    }


}

