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
        
       
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
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
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            songs.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .bottom)
            tableView.endUpdates()
        }
    }
  

   
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentIndex = songs.remove(at: fromIndexPath.row)
        songs.insert(currentIndex, at: to.row)
    }
   
   
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }

}
