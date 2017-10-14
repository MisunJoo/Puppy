//
//  ViewController.swift
//  Puppy
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var sexSegment: UISegmentedControl!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var smsSwitch: UISwitch!
    
    
    //스위치 On / Off 에 따라 사용자가 어떤 선택을 했는지 string을 저장할 변수
    var sms:String?
    
    //스위치 On / Off 에 따른 string값을 설정해줌.
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if sender.isOn{
            sms = "수신 동의"
        }
        else{
            sms = "수신 동의하지 않음"
        }
    }
    
    //키보드를 사라지게 함
    func textFieldShouldReturn(_ textField:UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    
    //버튼을 눌러 segue가 작동될 때 다음 씬(IntroViewController)이 push되기 전 넘겨줄 값들을 처리함
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toIntroView"{
            
        let IntroVC = segue.destination as! IntroViewController
        
        let name:String! = nameTextField.text
        let age:String! = ageTextField.text
        let sex:String! = sexSegment.titleForSegment(at: sexSegment.selectedSegmentIndex)
        let phone:String! = phoneTextField.text
        let email:String! = emailTextField.text
        

        IntroVC.introName = name
        IntroVC.introAge = age
        IntroVC.introSex = sex
        IntroVC.introPhone = phone
        IntroVC.introEmail = email
        IntroVC.introSms = sms
        
        }
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

