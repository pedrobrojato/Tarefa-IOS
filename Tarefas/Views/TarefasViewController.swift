//
//  TarefasViewController.swift
//  Tarefas
//
//  Created by Pedro Brojato on 02/03/22.
//

import Foundation
import UIKit


class TarefasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let tarefas = [
        Tarefa(name: "Dormir", concluded: false),
        Tarefa(name: "Comer", concluded: false),
        Tarefa(name: "Tomar banho", concluded: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tarefas"
        configTableView()
        configNavigation()
    }
    
    func configNavigation() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add,
                                        target: self,
                                        action: #selector(goToNewTask))
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc func goToNewTask() {
        let newTask = NewTaskViewController(nibName: nil, bundle: nil)
        navigationController?.pushViewController( newTask, animated: true)
    }
    
    func configTableView() {
        let nib = UINib(nibName: "TarefaCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TarefaCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let tarefa = tarefas[indexPath.row]
        goToDetails(with: tarefa)
    }
    
    func goToDetails(with task: Tarefa) {
        print(task)
        let detail = TaskDetailViewController(task: task)
        navigationController?.pushViewController(detail, animated: true)
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
