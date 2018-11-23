//
//  ViewController.swift
//  InsetsLabel_Swift
//
//  Created by 李新新 on 2016/10/19.
//  Copyright © 2016年 LucioLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyBoardLabel: InsetsLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let codeLabel = InsetsLabel(insets: UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20))
        codeLabel.translatesAutoresizingMaskIntoConstraints = false
        codeLabel.numberOfLines = 0
        codeLabel.lineBreakMode = NSLineBreakMode.byCharWrapping
        codeLabel.backgroundColor = UIColor.orange
        codeLabel.text = "\"Communist Party of China Constitution\" said: The Chinese Communist Party is the vanguard of the working class, while the Chinese people and the vanguard of the Chinese nation is the cause of socialism with Chinese characteristics, the core of leadership, on behalf of the development requirements of China's advanced productive forces, on behalf of China's advanced culture the way forward, on behalf of the Chinese people's fundamental interests. The party's highest ideal and ultimate goal is to realize communism. Communist Party of China takes Marxism-Leninism, Mao Zedong Thought, Deng Xiaoping Theory and \"Three Represents\" as its guide to action. Communist Party of China in the primary stage of socialism's basic line is: to lead and unite people of all nationalities to economic construction, the four cardinal principles of reform and opening, self-reliance, hard work and strive to build China into a prosperous, democratic, civilized and harmonious modern socialist country of the party."
        view.addSubview(codeLabel)
        
        
        if #available(iOS 11, *) {
            codeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            codeLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        } else{
            codeLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            codeLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        }
        codeLabel.topAnchor.constraint(equalTo: storyBoardLabel.bottomAnchor, constant: 10).isActive = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

