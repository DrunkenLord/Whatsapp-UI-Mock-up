//
//  SecondViewController.swift
//  Whatsapp
//
//  Created by Mehul  Singhal  on 08/03/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

var contacts = ["Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Anand","Ram"]

var userStatus = ["The world is bad","I am your superman","Lets party","VIT Sucks","The world is bad","I am your superman","Lets party","VIT Sucks","The world is bad","I am your superman","Lets party","VIT Sucks","The world is bad","I am your superman","Lets party","VIT Sucks","The world is bad","I am your superman","Lets party","VIT Sucks"]

var contactImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
                     "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
                     "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
                     "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
                     "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
                     "donostia.jpg", "royaloak.jpg"]



class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @available(iOS 2.0, *)
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! StatusTableViewCell 
        cell.contactLabel.text = contacts[indexPath.row]
        cell.thumbnailContactImageView.image = UIImage(named: contactImages[indexPath.row])
        cell.statusLabel.text = userStatus[indexPath.row]
        cell.thumbnailContactImageView.layer.cornerRadius = 25
        cell.thumbnailContactImageView.clipsToBounds = true
        
        return cell
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contactImages.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

