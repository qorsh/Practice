//
//  SwiftListViewController.swift
//  Practice
//
//  Created by baek on 2023/09/14.
//

import UIKit

class SwiftListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLayout()
    }
    
    private func setupLayout() {
        tableView.register(SwiftListCell.self, forCellReuseIdentifier: SwiftListCell.cellId)
    }
}

extension SwiftListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SwiftListCell.cellId, for: indexPath) as! SwiftListCell
        return cell
    }
    
    
}
