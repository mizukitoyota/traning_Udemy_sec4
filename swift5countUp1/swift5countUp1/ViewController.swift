//
//  ViewController.swift
//  swift5CountUp1
//
//  Created by Training on 2020/11/07.
//  Copyright © 2020 training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ラベルの文字０表示
        countLabel.text = "0"
        
    }

    @IBAction func plus(_ sender: Any) {
//ラベルに文字反映、カウントアップ、色が10以上でラベルの色変化
        count  = count + 1
        //文字列にキャスト
        countLabel.text = String(count)
        if count >= 10 {
            changeTextColor()
        }
    }
    @IBAction func minus(_ sender: Any) {
//ラベルに文字反映、カウントダウン、色が０以下の場合ラベルの色変化
        count = count - 1
        countLabel.text = String(count)
        if count <= 0 {
            resetColor()
        }
    }
    //新メソッド作成
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    func resetColor(){
        countLabel.textColor = .white
    }
}
