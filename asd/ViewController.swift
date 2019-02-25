//
//  ViewController.swift
//  asd
//
//  Created by Jin He (CONJINH) on 2/25/19.
//  Copyright © 2019 Jin He (CONJINH). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 128
//        self.tableView.estimatedRowHeight = 128
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.cellId, for: indexPath) as! Cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

extension ViewController: UITableViewDelegate { }

class Cell: UITableViewCell {
    static let cellId = String(describing: Cell.self)
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.inputTextView.isHidden = selected ? false : true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.inputTextView.isHidden = true
        self.inputTextView.text = "iygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgiiygusdoailudgi"
    }
}
