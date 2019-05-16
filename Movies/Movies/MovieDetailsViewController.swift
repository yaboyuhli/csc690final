//
//  MovieDetailsViewController.swift
//  Movies
//
//  Created by Ali Nasralla on 5/10/19.
//  Copyright © 2019 Ali Nasralla. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie : [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            titleLabel.text = movie["title"] as? String
            titleLabel.sizeToFit()
            synopsisLabel.text = movie["overview"] as? String
            synopsisLabel.sizeToFit()
        
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterPath = movie["poster_path"] as! String
            let posterUrl = URL(string: baseUrl+posterPath)
        
            posterView.af_setImage(withURL: posterUrl!)
        
            let backdropPath = movie["backdrop_path"] as! String
            let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780"+backdropPath)
        
            backdropView.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
    }

}
