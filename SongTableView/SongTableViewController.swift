//
//  SongTableViewController.swift
//  SongTableView
//
//  Created by Yang Nina on 2021/5/10.
//

import UIKit

class SongTableViewController: UITableViewController {

    struct PropertyKeys {
        static let songCell = "songCell"
    }
    var Songs = [
        Song(name: "Red Flavor", intro: "Red Velete-Red Flavor", imgName: "Red Flavor", songUrl: "https://www.youtube.com/watch?v=WyiIGEHQP8o"),
        Song(name: "Zimzalabim", intro: "Red Velete-Zimzalabim", imgName: "Zimzalabim", songUrl: "https://www.youtube.com/watch?v=YBnGBb1wg98"),
        Song(name: "Really Bad Boy", intro: "Red Velete-Really Bad Boy", imgName: "Really Bad Boy", songUrl: "https://www.youtube.com/watch?v=IWJUPY-2EIM"),
        Song(name: "Rookie", intro: "Red Velete-Rookie", imgName: "Rookie", songUrl: "https://www.youtube.com/watch?v=J0h8-OTC38I"),
        Song(name: "Russian Roulette", intro: "Red Velete-Russian Roulette", imgName: "Russian Roulette", songUrl: "https://www.youtube.com/watch?v=QslJYDX3o8s"),
        Song(name: "Ice Cream Cake", intro: "Red Velete-Ice Cream Cake", imgName: "Ice Cream Cake", songUrl: "https://www.youtube.com/watch?v=glXgSSOKlls"),
        Song(name: "Happiness", intro: "Red Velete-Hapiness", imgName: "Happiness", songUrl: "https://www.youtube.com/watch?v=JFgv8bKfxEs")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBSegueAction func showDetail(_ coder: NSCoder) -> DetailViewController? {
        guard let row = tableView.indexPathForSelectedRow?.row else { return nil }
        
        return DetailViewController(coder: coder, song: Songs[row])
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //回傳數量
        return Songs.count
    }

    //UITableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //轉型
        //as!
        //let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.songCell, for: indexPath) as! SongTableViewCell
        //as?
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.songCell, for: indexPath) as? SongTableViewCell else { return UITableViewCell() }
        
        let song = Songs[indexPath.row]
        //設定標題
        //cell.textLabel?.text = song.name
        cell.nameLabel.text = song.name
        //設定介紹
        //cell.detailTextLabel?.text = song.intro
        cell.introLabel.text = song.intro
        //設定圖片
        //cell.imageView?.image = UIImage(named: song.imgName)
        cell.showImg.image = UIImage(named: song.imgName)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
