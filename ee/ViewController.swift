//
//  ViewController.swift
//  ee
//
//  Created by jeanwei on 2020/1/1.
//  Copyright © 2020 jeanwei. All rights reserved.
//

import UIKit
import AVFoundation
//播放聲音
var palyer : AVPlayer?

class ViewController: UIViewController {
    //outlet collection，把所有圖存在 array
    @IBOutlet var diceImageViews: [UIImageView]!
    let imageViews = ["1" , "2" , "3" , "4" , "5" , "6"]
    
    //搖晃骰子 偵測晃動 用for迴圈，讓每張圖亂數 motionEnded()即可完成晃動手勢結束後更換圖片
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        for diceimage in diceImageViews {
            diceimage.image = UIImage(named: imageViews.randomElement()!)
        }
        
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //開始按鈕 播放聲音  用for迴圈，讓每張圖亂數顯示
    @IBAction func shakeButton(_ sender: UIButton) {
        for diceimage in diceImageViews{
            diceimage.image = UIImage(named: imageViews.randomElement()!)
        }
        let soundshake = Bundle.main.url(forResource: "coco", withExtension: "mp3")!
               palyer = AVPlayer(url:soundshake)
               palyer?.play()
    }
    
}

