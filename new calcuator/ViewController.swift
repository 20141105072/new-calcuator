//
//  ViewController.swift
//  new calcuator
//
//  Created by 20141105072 on 16/6/27.
//  Copyright © 2016年 20141105072. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var x: UITextField!
    var temp=0.0
    var flag=0

    @IBAction func add(sender: AnyObject) {
            flag=1
            temp=(Double)(x.text!)!
            x.text=""

    }
        @IBAction func sub(sender: AnyObject) {
            flag=2
            temp=(Double)(x.text!)!
            x.text=""
    }
    @IBAction func mul(sender: AnyObject) {
           flag=3
           temp=(Double)(x.text!)!
           x.text=""
    }

    @IBAction func div(sender: AnyObject) {
            flag=4
            temp=(Double)(x.text!)!
            x.text=""
    }
    @IBAction func cal(sender: AnyObject) {
        if flag==1
        {
            temp=temp+(Double)(x.text!)!
            x.text="\(temp)"
        }
        if flag==2
        {
            temp=temp-(Double)(x.text!)!
            x.text="\(temp)"
        }
        if flag==3
        {
            temp=temp*(Double)(x.text!)!
            x.text="\(temp)"
        }
        if flag==4
        {
            if (Double)(x.text!)!==0{
                x.text="除数不能为零"
            }
            else{
            temp=temp/(Double)(x.text!)!
            x.text="\(temp)"
        }
        }
        
    }
    @IBAction func percent(sender: AnyObject) {
        temp=(Double)(x.text!)!/100
        x.text="\(temp)"
    }
    @IBAction func minus(sender: AnyObject) {
        temp=(-1)*(Double)(x.text!)!
        x.text="\(temp)"
        
    }
    @IBAction func del(sender: AnyObject) {
        var str=x.text!
        if str != ""{
            str.removeAtIndex(str.endIndex.predecessor())
            x.text=str
    }
        else{
            x.text="0"
        }
    }
    
    @IBAction func clear(sender: AnyObject) {
        x.text=""
        temp=0
    }
    @IBAction func one(sender: AnyObject) {
        x.text=x.text!+"1"
    }
    @IBAction func two(sender: AnyObject) {
        x.text=x.text!+"2"
    }
    @IBAction func three(sender: AnyObject) {
        x.text=x.text!+"3"
    }
    @IBAction func four(sender: AnyObject) {
        x.text=x.text!+"4"
    }
    @IBAction func five(sender: AnyObject) {
        x.text=x.text!+"5"
    }
    @IBAction func six(sender: AnyObject) {
        x.text=x.text!+"6"
    }
    @IBAction func seven(sender: AnyObject) {
        x.text=x.text!+"7"
    }
    @IBAction func eight(sender: AnyObject) {
        x.text=x.text!+"8"
    }
    @IBAction func nine(sender: AnyObject) {
        x.text=x.text!+"9"
    }
    @IBAction func zero(sender: AnyObject) {
        x.text=x.text!+"0"
    }
    @IBAction func dot(sender: AnyObject) {
        x.text=x.text!+"."
        if(x.text!=="."){
            x.text=x.text!+"error"
            x.text!=""
        }
    }
}

