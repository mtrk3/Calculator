//
//  ViewController.swift
//  Calculator
//
//  Created by 奧野美波 on 2015/06/17.
//  Copyright (c) 2015年 奥野美波. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!
    var number : Int = 0
    var number2 : Int = 0
    var answer : Int = 0
    var operation : Int = 0
    var pow : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func select1(){
        number = number*10+1
        label.text = String(number)
    }
    
    @IBAction func select2(){
        number = number*10+2
        label.text = String(number)
    }
    
    @IBAction func select3(){
        number = number*10+3
        label.text = String(number)
    }
    
    @IBAction func select4(){
        number = number*10+4
        label.text = String(number)
    }
    
    @IBAction func select5(){
        number = number*10+5
        label.text = String(number)
    }


    @IBAction func select6(){
        number = number*10+6
        label.text = String(number)
    }
    @IBAction func select7(){
        number = number*10+7
        label.text = String(number)
    }
    
    @IBAction func select8(){
        number = number*10+8
        label.text = String(number)
    }
    
    @IBAction func select9(){
        number = number*10+9
        label.text = String(number)
    }
    
    @IBAction func select0(){
        number = number*10+0
        label.text = String(number)
    }



    @IBAction func plus(){
        label.text = String("+")
        
        operation = 1
        number2 = number
        number = 0
        
    }
    @IBAction func minus(){
        label.text = String("-")
        
        operation = 2
        number2 = number
        number = 0
    }
    @IBAction func divide(){
        label.text = String("÷")
        
        operation = 3
        number2 = number
        number = 0
    }
    @IBAction func multi(){
        label.text = String("×")
        
        operation = 4
        number2 = number
        number = 0
        
    }
    @IBAction func percent(){
        operation = 5
        number = number * 108 / 100
        label.text = String(number)
    }
    @IBAction func absolute(){
        operation = 6
        number = number * -1
        label.text = String(number)
    }
    @IBAction func power(){
        operation = 7
        while number > 0{
        pow = pow * number
            number--
        }
        label.text = String(pow)
        number = 0
        pow = 0
    }
    @IBAction func multii(){
        operation = 8
        number = number * number
        label.text = String(number)
    }

    @IBAction func equal(){
        if operation == 1{
            label.text = String(number + number2)
        }else if operation == 2{
            label.text = String(number - number2)
        }else if operation == 3{
            label.text = String(number / number2)
        }else if operation == 4{
            label.text = String(number * number2)
        }
        
    }
    @IBAction func ac(){
        number = 0
        number2 = 0
        label.text = String(0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

