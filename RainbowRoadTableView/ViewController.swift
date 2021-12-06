//
//  ViewController.swift
//  RainbowRoadTableView
//
//  Created by Hajar Alomari on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RainbowTableView: UITableView!
    
  
    var colors : [String] = [ "yellow", "pastelBlue", "pastelBlue-1", "pastelBlue-2", "pastelBlue-3","purple-1", "purple",   "green",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        RainbowTableView.dataSource = self
        RainbowTableView.delegate = self
        
      
    }
    
    

 
}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
       // let color = colors[Int.random(in: 0..<colors.count)]
        let color = colors[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
       
        cell.backgroundColor = UIColor(named: color)
        
        return cell
    }
}





