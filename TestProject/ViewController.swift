//
//  ViewController.swift
//  Tablepage
//
//  Created by user205563 on 10/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var firstTableView: UITableView!
    
    var userdetails = [userdataforcell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

          userdetails = [userdataforcell(name: "A", message: "A", time: "7.00"),
                         userdataforcell(name: "B", message: "B", time: "7.00"),
                         userdataforcell(name: "C", message: "C", time: "7.00"),
                         userdataforcell(name: "D", message: "D", time: "7.00"),
                         userdataforcell(name: "E", message: "E", time: "7.00"),
                         userdataforcell(name: "F", message: "F", time: "7.00"),
                         userdataforcell(name: "G", message: "G", time: "7.00"),
                         userdataforcell(name: "H", message: "H", time: "7.00")]
        
        firstTableView.delegate = self
        firstTableView.dataSource = self
                         
    }
    
/*  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("currently filling row no. \(indexPath.row)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablesample") as! UITableViewCell
        cell.textLabel?.text = "nothing"
        return cell
    }*/
   func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
            return userdetails.count + 1
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        print("curently filling row no. \(indexPath.row)")
        
        if indexPath.row < userdetails.count, let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell") as? CustomTableViewCell {
            let presentdata = userdetails[indexPath.row]
            cell.name.text = presentdata.name
            cell.message.text = presentdata.message
            cell.time.text = presentdata.time
            let image = UIImage(named: "myImage")
            cell.myImageView.image = image
            return cell
        } else if let cell = tableView.dequeueReusableCell(withIdentifier: "defaultTableViewCell") {
            cell.textLabel?.text = "Default TableView Cell"
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, highlightRowAt indexPath: IndexPath) -> CGFloat {
        return 116.0
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("clicked row \(indexPath.row)")
        let data = userdetails[indexPath.row]
        print(data.name)
        print(data.time)
    }
    
    
    
    
    
    
    
}
    
    


