//
//  ViewController.swift
//  Coding With Kak Zein
//
//  Created by Karen Natalia on 21/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }

    func registerCell() {
        tableView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: "categoryCellID")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 120 : 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "bannerCellID", for: indexPath) as? BannerCell)!
            
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "categoryCellID", for: indexPath) as? CategoryCell)!
            
            return cell
        }
    }

}

