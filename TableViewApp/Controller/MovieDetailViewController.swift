//
//  MovieDetailViewController.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 28/10/2023.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie?
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieGanreLebel: UILabel!
    @IBOutlet weak var movieButton: UIButton!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mainMovie = movie {
            movieImageView?.image = UIImage(named: mainMovie.poster)
            movieTitleLabel?.text = mainMovie.title
            movieYearLabel?.text = String(mainMovie.year)
            movieGanreLebel?.text = mainMovie.genre
            movieDescriptionLabel.text = mainMovie.description
            
        }
    }
    
    @IBAction func movieButtonTapped(_ sender: Any) {
        if let movie = movie, let url = URL(string: movie.trailer) {
            UIApplication.shared.open(url)
        }
    }
}


