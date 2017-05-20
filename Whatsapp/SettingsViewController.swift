//
//  SettingsViewController.swift
//  Whatsapp
//
//  Created by Mehul  Singhal  on 08/03/17.
//  Copyright © 2017 Mehul  Singhal . All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var x = [["Mehul"],["Starred Messages","Whatsapp Web/Desktop"],["Account","Chats","Notifications","Data and Storage Usage"],["About and Help","Tell a Friend"]]
    var background = [["cafedeadend.jpg"], ["S1","S2"],["S3","S4","S5","S6"],["S7","S8"]]
    var headertittle = ["Profile","Whatsapp Web","Account Settings","Help"]

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return x[section].count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section==0
        {
            return 73
        }
        else
        {
            return 52
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SettingsTableViewCell
        cell.settingsLabel.text = x[indexPath.section][indexPath.row]
//        cell.settingsImageView.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
//        cell.settingsImageView.backgroundColor = UIColor.redColor
        cell.settingsImageView.image = UIImage(named: background[indexPath.section][indexPath.row])
 
    
        
        if indexPath.section == 0 {
        cell.settingsImageView.layer.cornerRadius = 30
        } else {
            cell.settingsImageView.layer.cornerRadius = 7.15
        }
        cell.settingsImageView.clipsToBounds = true
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
 
        
        if let sectionsarray = headertittle as? [String]
        {
            return sectionsarray[section]
        }
        
        return "unknown"

    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
