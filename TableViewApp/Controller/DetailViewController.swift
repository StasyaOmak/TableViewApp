//
//  DetailViewController.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 28/10/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    
    var song: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mainSong = song {
            trackImageView.image = UIImage(named: mainSong.cover)
            trackNameLabel.text = mainSong.track +  "\n\(mainSong.album)"
        }
    }
}
