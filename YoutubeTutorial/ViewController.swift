//
//  ViewController.swift
//  YoutubeTutorial
//
//  Created by Akash Singhal on 04/11/16.
//  Copyright © 2016 Akash Singhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    
    var names = ["Mark", "Clyde", "Buck", "Steve", "Wallace"]
    var breeds = ["Labrador Retriever", "Bulldog", "German Shephard", "Golden Retriever", "Yorkshire"]
    var images = [UIImage(named: "Mark"), UIImage(named: "Clyde"), UIImage(named: "Buck"), UIImage(named: "Steve"), UIImage(named: "Wallace")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        CustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.dogName.text = names[indexPath.row]
        cell.breedName.text = breeds[indexPath.row]
        
        return cell
    }
}

