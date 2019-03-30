//
//  ViewController.swift
//  task03p
//
//  Created by Feris Tjuanda on 30/3/19.
//  Copyright © 2019 Feris Tjuanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var correctAns: UILabel!
    @IBOutlet weak var incorrectAns: UILabel!
    @IBOutlet weak var correctAnsVal: UILabel!
    @IBOutlet weak var incorrectAnsVal: UILabel!
    @IBOutlet weak var buttonOne: UISwitch!
    @IBOutlet weak var buttonTwo: UISwitch!
    @IBOutlet weak var buttonThree: UISwitch!
    @IBOutlet weak var buttonFour: UISwitch!
    @IBOutlet weak var buttonFive: UISwitch!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var ansOne = true;
    var ansTwo = false;
    var ansThree = true;
    var ansFour = false;
    var ansFive = false;
    var totalCorrectAns : Int = 0;
    var totalIncorrectAns : Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctAns.isHidden = true;
        incorrectAns.isHidden = true;
        correctAnsVal.isHidden = true;
        incorrectAnsVal.isHidden = true;
        resetButton.isHidden = true;
        //resetButton.isHidden = true;
        buttonOne.isOn = true;
        buttonTwo.isOn = true;
        buttonThree.isOn = true;
        buttonFour.isOn = true;
        buttonFive.isOn = true;
        totalCorrectAns = 0;
        totalIncorrectAns = 0;

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitBtnPressed(_ sender: Any) {
        // check the value of every switch button to determine the answer (true if it's on, false if it's off)
        buttonOne.isOn == ansOne ? (totalCorrectAns += 1) : (totalIncorrectAns += 1);
        buttonTwo.isOn == ansTwo ? (totalCorrectAns += 1) : (totalIncorrectAns += 1);
        buttonThree.isOn == ansThree ? (totalCorrectAns += 1) : (totalIncorrectAns += 1);
        buttonFour.isOn == ansFour ? (totalCorrectAns += 1) : (totalIncorrectAns += 1);
        buttonFive.isOn == ansFive ? (totalCorrectAns += 1) : (totalIncorrectAns += 1);
        correctAns.isHidden = false;
        incorrectAns.isHidden = false;
        correctAnsVal.isHidden = false;
        incorrectAnsVal.isHidden = false;
        correctAnsVal.text = String(totalCorrectAns);
        incorrectAnsVal.text = String(totalIncorrectAns);
        submitButton.isHidden = true;
        resetButton.isHidden = false;
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        submitButton.isHidden = false;
        resetButton.isHidden = true;
        correctAns.isHidden = true;
        incorrectAns.isHidden = true;
        correctAnsVal.isHidden = true;
        incorrectAnsVal.isHidden = true;
        //resetButton.isHidden = true;
        buttonOne.isOn = true;
        buttonTwo.isOn = true;
        buttonThree.isOn = true;
        buttonFour.isOn = true;
        buttonFive.isOn = true;
        totalCorrectAns = 0;
        totalIncorrectAns = 0;
    }
    

   
    

}

