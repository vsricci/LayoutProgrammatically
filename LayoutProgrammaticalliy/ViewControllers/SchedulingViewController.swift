//
//  SchedulingViewController.swift
//  LayoutProgrammaticalliy
//
//  Created by Vinicius Ricci on 27/10/18.
//  Copyright © 2018 Vinicius Ricci. All rights reserved.
//

import UIKit

class SchedulingViewController: UIViewController, UIScrollViewDelegate {

    var schedulingView : SchedulingView!
    var scrollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        super.loadView()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //scrollView.contentSize = CGSize(width: schedulingView.bounds.size.width, height: 700)
    }
    
    func configLayout() {
       view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        scrollView = UIScrollView()
        scrollView.delegate = self
        scrollView.alwaysBounceVertical = true
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        view.addSubview(scrollView)
        scrollView?.translatesAutoresizingMaskIntoConstraints = false
        
        
        scrollView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        schedulingView = SchedulingView()
        schedulingView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        scrollView.addSubview(schedulingView)
        schedulingView?.translatesAutoresizingMaskIntoConstraints = false
        schedulingView?.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        schedulingView?.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        schedulingView?.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        schedulingView?.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        schedulingView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        schedulingView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
    }

}


extension SchedulingViewController {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentSize = CGSize(width: schedulingView.bounds.size.width, height: 700)
        print(UIScreen.main.bounds.size.height)
        print(scrollView.contentSize.height)
    }
}

