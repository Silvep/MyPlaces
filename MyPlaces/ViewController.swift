//
//  ViewController.swift
//  MyPlaces
//
//  Created by Иван Алмазов on 22.01.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    
    var restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "Love&Life", "Шок", "Бочка"
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = restaurantNames[indexPath.row]
        cell?.imageView?.image = UIImage(named: restaurantNames[indexPath.row ])
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

