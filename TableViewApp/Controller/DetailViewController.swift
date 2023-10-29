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
    @IBOutlet weak var songClipUrlLabel: UIButton!
    
    var song: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mainSong = song {
            trackImageView.image = UIImage(named: mainSong.cover)
            trackNameLabel.text = mainSong.track +  "\n\n\(mainSong.album)"
        }
    }
    
    @IBAction func songClipTapped(_ sender: Any) {
        if let songs = song, let url = URL(string: songs.songClipUrl) {
            UIApplication.shared.open(url)
        }
    }
}
