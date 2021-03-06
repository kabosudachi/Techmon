//
//  LobbyViewController.swift
//  TechMonster
//
//  Created by 西村真奈 on 2015/05/10.
//  Copyright (c) 2015年 ManaNishimura. All rights reserved.
//

import UIKit
import AVFoundation

class LobbyViewController: UIViewController,AVAudioPlayerDelegate {
    
    var stamina: Float=0
    var staminaTimer:NSTimer!
    var util:TechDraUtility!
    var player:Player!
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var staminaBar:UIProgressView!
    @IBOutlet var levelLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player=Player()
        
        staminaBar.transform=CGAffineTransformMakeScale(1.0,4.0)
        
        let userDefaults=NSUserDefaults.standardUserDefaults()
        var level:Int=userDefaults.integerForKey("level")
        
        nameLabel.text=player.name
        levelLabel.text = String(format:"Lv.%d",level+1)
        stamina=100
        
        util=TechDraUtility()
        cureStamina()
    }
    
    override func viewDidAppear(animated:Bool){
        super.viewDidAppear(true)
        util.playBGM("lobby")
    }
    override func viewDidDisappear(animated: Bool) {
        util.stopBGM()
    }
        
        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Cure
    func cureStamina(){
     staminaTimer=NSTimer.scheduledTimerWithTimeInterval(1.0,target:self,selector:"updateStaminaValue",
        userInfo:nil,repeats:true)
     staminaTimer.fire()
    }

func updateStaminaValue(){
    if stamina <= 100{
        stamina = stamina+1
        staminaBar.progress=stamina/100
    }
}


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}