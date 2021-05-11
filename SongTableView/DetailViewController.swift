//
//  DetailViewController.swift
//  SongTableView
//
//  Created by Yang Nina on 2021/5/10.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    let song:Song
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var songWebView: WKWebView!
    
    init?(coder:NSCoder,song:Song){
        self.song = song
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //imgView.image = UIImage(named: song.imgName)
        if let url = URL(string: song.songUrl){
            let request = URLRequest(url: url)
            songWebView.load(request)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
