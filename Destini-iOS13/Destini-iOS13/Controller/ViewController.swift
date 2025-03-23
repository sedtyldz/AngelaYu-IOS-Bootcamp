//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    var current = 0
    
    func updateUI(story:Story){
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choice1Button.tag = 1
        choice2Button.tag = 2
        
        storyLabel.text = storyBrain.storys[0].title
        choice1Button.setTitle(storyBrain.storys[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storys[0].choice2, for: .normal)
       
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let clickedButton = sender.tag
        updateUI(story:storyBrain.next(userChoice: clickedButton,Current: &current))
    }
    
    
    


}

