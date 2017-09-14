//
//  ViewController.swift
//  nanndemoii
//
//  Created by y on 2017/08/23.
//  Copyright © 2017年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view.backgroundColor = UIColor.red
        
        tableView = UITableView(frame: view.frame, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        view.addSubview(tableView)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        if indexPath.row == 0 {
            cell.ImageView.image = UIImage(named: "0060")
            cell.TextLabel.text = "ohno"
            return cell

            
        } else if indexPath.row == 1 {
            cell.ImageView.image = UIImage(named: "0061")
            cell.TextLabel.text = "ohno"
            return cell
  
        }
        
        else if indexPath.row == 2 {
            cell.ImageView.image = UIImage(named: "0062")
            cell.TextLabel.text = "ohno"
            return cell
   
        }
        
        else if indexPath.row == 3 {
            cell.ImageView.image = UIImage(named: "0063")
            cell.TextLabel.text = "ohno"
            return cell

        }
        
        else if indexPath.row == 4 {
            cell.ImageView.image = UIImage(named: "Woman")
            cell.TextLabel.text = "ohno"
            return cell

        }
        
        
        cell.ImageView.image = UIImage(named: "Woman")
        cell.TextLabel.text = "ohno"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

