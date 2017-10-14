//
//  DetailViewController.swift
//  Puppy
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var smsLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    
    var locationInfo:String?
    var timeInfo: String?
    var dateInfo: String?
    
    var nameInfo: String?
    var ageInfo: String?
    var sexInfo: String?
    var phoneInfo: String?
    var emailInfo: String?
    var smsInfo: String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
        if let contentLocation = locationInfo{
            locationLabel.text = contentLocation
        }
        
        if let contentTime = timeInfo{
            timeLabel.text = contentTime
        }
        
        if let contentDate = dateInfo{
            dateLabel.text = contentDate
        }
        
        //없어도되나?
        if let contentName = nameInfo{
            nameLabel.text = contentName
        }
        
        if let contentAge = ageInfo{
            ageLabel.text = contentAge
        }
        
        if let contentSex = sexInfo{
            sexLabel.text = contentSex
        }
        if let contentPhone = phoneInfo{
            phoneLabel.text = contentPhone
        }
        if let contentEmail = emailInfo{
            emailLabel.text = contentEmail
        }
        if let contentSms = smsInfo{
            smsLabel.text = contentSms
        }
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
