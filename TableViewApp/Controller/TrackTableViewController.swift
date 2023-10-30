//
//  TrackTableViewController.swift
//  TableViewApp
//
//  Created by Anastasiya Omak on 28/10/2023.
//

import UIKit

class TrackTableViewController: UITableViewController {
    
    var songs = Song.createSong()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return songs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath)
        
        let song = songs[indexPath.row]
        
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)
        
    
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath:::", indexPath)
            guard let detailVC = segue.destination as? DetailViewController else {return}
            detailVC.song = songs[indexPath.row]
        }
    }
}
