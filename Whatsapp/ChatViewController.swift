//
//  FirstViewController.swift
//  Whatsapp
//
//  Created by Mehul  Singhal  on 08/03/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit
var userImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
                        "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
                        "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
                        "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
                        "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
                        "donostia.jpg", "royaloak.jpg"]
var userNames = ["Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Mehul","Ayush","Mayank","Bhaskar","Aman","Anand","Ram"]
var chats = ["The times is now","I am batman","Let me love you","I dont wanna live foreever","The times is now","I am batman","Let me love you","I dont wanna live foreever","The times is now","I am batman","Let me love you","I dont wanna live foreever","The times is now","I am batman","Let me love you","I dont wanna live foreever","The times is now","I am batman","Let me love you","I dont wanna live foreever","The times is now","I am batman","Let me love you","I dont wanna live foreever"]

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ChatTableViewCell
        
        //configuring cell
        cell.nameLabel.text = userNames[indexPath.row]
        cell.messageLabel.text = chats[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: userImages[indexPath.row])
        cell.thumbnailImageView.layer.cornerRadius = 30
        cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }

    
    
   
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableView{
//        
//       
//    }
//    
    
    
//    func prefersStatusBarHidden() -> Bool{
//        return true
//    }
    
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userImages.count
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

