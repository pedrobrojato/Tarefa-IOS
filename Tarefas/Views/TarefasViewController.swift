//
//  TarefasViewController.swift
//  Tarefas
//
//  Created by Pedro Brojato on 02/03/22.
//

import Foundation
import UIKit

class TarefasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tarefas: [Tarefa] = [
        Tarefa(name: "Dormir", concluded: false),
        Tarefa(name: "Comer", concluded: false),
        Tarefa(name: "Tomar banho", concluded: true)
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        let nib = UINib(nibName: "TarefaCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TarefaCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TarefaCell", for: indexPath) as! TarefaCell
        let tarefa = tarefas[indexPath.row]
        
        cell.tarefaLabel.text = tarefa.name
        var status = ""
        if tarefa.concluded {
            status = "concluido"
        } else {
            status = "pendente"
        }
        cell.statusLabel.text = status
        return cell
    }
}
