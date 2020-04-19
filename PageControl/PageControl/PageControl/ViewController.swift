//
//  ViewController.swift
//  PageControl
//
//  Created by hrobotics on 2020/04/19.
//  Copyright © 2020 eunGyeolLee. All rights reserved.
//

import UIKit

var images = ["01.jpg", "02.jpg","03.jpg", "04.jpg", "05.jpg"]


class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
    
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

