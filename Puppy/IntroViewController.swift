//
//  IntroViewController.swift
//  Puppy
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var locationPicker: UIPickerView!
    @IBOutlet var datePicker: UIDatePicker!
   
    var introName:String?
    var introAge:String?
    var introSex:String?
    var introPhone:String?
    var introEmail:String?
    var introSms:String?

    
    
    //Custom Picker(봉사 희망 지점 및 시간) 설정
    let locationArray:[String] = ["케어 답십리점", "케어 퇴계로점"]
    let timeArray:[String] = ["오전 9:30", "오전 10:00","오후 03:00","오후 04:00", "오후 05:00"]
   

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return locationArray.count
        }
        else{
            return timeArray.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return locationArray[row]
        }
        else{
            return timeArray[row]
        }
    }
    
    //다음 페이지 (DetailViewController)가 push되기 전 넘겨줄 값을 처리
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailView"{
            let detailVC = segue.destination as! DetailViewController
            
            //DatePicker가 어떻게 출력될 것인지 설정
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM, dd, yyyy"

            detailVC.dateInfo = dateFormatter.string(from: self.datePicker.date)
            detailVC.locationInfo = locationArray[self.locationPicker.selectedRow(inComponent: 0)]
            detailVC.timeInfo = timeArray[self.locationPicker.selectedRow(inComponent: 1)]
            
            detailVC.nameInfo = introName
            detailVC.ageInfo = introAge
            detailVC.sexInfo = introSex
            detailVC.phoneInfo = introPhone
            detailVC.emailInfo = introEmail
            detailVC.smsInfo = introSms
            
            
        }
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
