//
//  TaskDetailViewController.swift
//  Tarefas
//
//  Created by Pedro Brojato on 04/03/22.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    let task: Tarefa
    
    init(task: Tarefa) {
        self.task = task
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = task.name
    }
    

    
    
}
