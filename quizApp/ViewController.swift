//
//  ViewController.swift
//  quizApp
//
//  Created by TakayukiOshima on 2019/02/19.
//  Copyright © 2019 TakayukiOshima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // プロパティ
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    @IBOutlet weak var img: UIImageView!
    
    var imgAnt = UIImage(named: "ari")
    var imgSpider = UIImage(named: "kumo")
    var imgCaterpillar = UIImage(named: "kemushi")
    
    var collectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hide()
        randomQuestion()
    }
    
    
    func randomQuestion(){
        var randomNumber = arc4random() % 3
        randomNumber += 1
        
        switch(randomNumber){
        case 1:
            questionLabel.text = "このアリはヤバイ？"
            img.image = imgAnt
            button1.setTitle("ヤバくない👍", for: UIControl.State.normal)
            button2.setTitle("どうだろう😕", for: UIControl.State.normal)
            button3.setTitle("危険💀", for: UIControl.State.normal)
            collectAnswer = "3"
            break
        case 2:
            questionLabel.text = "このクモは危険かな？"
            img.image = imgSpider
            button1.setTitle("危険じゃない✌️", for: UIControl.State.normal)
            button2.setTitle("クモは全部危険🧟‍♂️", for: UIControl.State.normal)
            button3.setTitle("危険💀", for: UIControl.State.normal)
            collectAnswer = "3"
            break
        case 3:
            questionLabel.text = "この毛虫、触ったけど大丈夫？"
            img.image = imgCaterpillar
            button1.setTitle("大丈夫🙆‍♂️", for: UIControl.State.normal)
            button2.setTitle("絶対ヤバイ🏥", for: UIControl.State.normal)
            button3.setTitle("親に聞くわ📞", for: UIControl.State.normal)
            collectAnswer = "1"
            break
        default:
            break
        }
    }
    
    
    func hide(){
        endLabel.isHidden = true
        Next.isHidden = true
    }
    func unHide(){
        endLabel.isHidden = false
        Next.isHidden = false
    }
    
    
    @IBAction func button1Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "1"){
            endLabel.text = "OK"
        }
        else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "2"){
            endLabel.text = "OK"
        }
        else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        unHide()
        if (collectAnswer == "3"){
            endLabel.text = "OK"
        }
        else{
            endLabel.text = "buuuu!"
        }
    }
    @IBAction func Next(_ sender: Any) {
        hide()
        randomQuestion()
    }
    


}

