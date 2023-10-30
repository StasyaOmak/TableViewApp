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
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        cell.movieStarsLabel?.text = movie.movieStars
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? MovieDetailViewController else {return}
            detailVC.movie = movies[indexPath.row]
        }
    }
    
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the specified item to be editable.
            return true
        }
        

       
        // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                movies.remove(at: indexPath.row)
                tableView.beginUpdates()
                tableView.deleteRows(at: [indexPath], with: .bottom)
                tableView.endUpdates()
            }
        }
      

       
        // Override to support rearranging the table view.
        override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
            let currentIndex = movies.remove(at: fromIndexPath.row)
            movies.insert(currentIndex, at: to.row)
        }
       
       
        // Override to support conditional rearranging of the table view.
        override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the item to be re-orderable.
            return true
        }

    }

