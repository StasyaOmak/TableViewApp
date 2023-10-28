//
//  MovieTableViewController.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 28/10/2023.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        
        
        let movie = movies[indexPath.row]
        
        cell.movieLabel?.text = movie.title
        cell.genreLabel?.text = movie.genre
        cell.yearLabel?.text = String(movie.year)
        cell.movieImageView.image = UIImage(named: movie.poster)
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? MovieDetailViewController else {return}
            detailVC.movie = movies[indexPath.row]
        }
    }
}
