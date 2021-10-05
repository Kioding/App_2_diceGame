//
//  ViewController.swift
//  diceGame
//
//  Created by kio on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = diceArray[0]
        secondImageView.image = diceArray[0]
    }

    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째 이미지뷰와 두번째 이미지뷰 랜덤 변경
        firstImageView.image = diceArray.randomElement()
        secondImageView.image = diceArray.randomElement()
    }
}

