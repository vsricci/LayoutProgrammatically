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
        schedulingView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        scrollView.addSubview(schedulingView)
        schedulingView?.translatesAutoresizingMaskIntoConstraints = false
        schedulingView?.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        schedulingView?.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        schedulingView?.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        schedulingView?.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        schedulingView.heightAnchor.constraint(equalToConstant: 970).isActive = true
        schedulingView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        schedulingView.morningButton.addTarget(self, action: #selector(checkedRadioButtonMorning(_:)), for: .touchUpInside)
        schedulingView.afternoonButton.addTarget(self, action: #selector(checkedRadioButtonAfternoon(_:)), for: .touchUpInside)
        schedulingView.nigthButton.addTarget(self, action: #selector(checkedRadioButtonNigth(_:)), for: .touchUpInside)
        schedulingView.scheduleExameButton.addTarget(self, action: #selector(checkedRadioButtonScheduleExam(_:)), for: .touchUpInside)
        schedulingView.scheduleAppointmentButton.addTarget(self, action: #selector(checkedRadioButtonScheduleAppointment(_:)), for: .touchUpInside)
        
    }
    
    
    @objc func checkedRadioButtonMorning(_ sender: UIButton) {
     schedulingView.morningButton.isSelected = !schedulingView.morningButton.isSelected
        
        if schedulingView.morningButton.isSelected == true {
            schedulingView.morningButton.setImage(UIImage(named: "checked_radio_button"), for: .normal)
        }
        else {
            schedulingView.morningButton.setImage(UIImage(named: "radio_button"), for: .normal)
        }
    }
    
    @objc func checkedRadioButtonAfternoon(_ sender: UIButton) {
        schedulingView.afternoonButton.isSelected = !schedulingView.afternoonButton.isSelected
        
        if schedulingView.afternoonButton.isSelected == true {
            schedulingView.afternoonButton.setImage(UIImage(named: "checked_radio_button"), for: .normal)
        }
        else {
            schedulingView.afternoonButton.setImage(UIImage(named: "radio_button"), for: .normal)
        }
    }
    
    @objc func checkedRadioButtonNigth(_ sender: UIButton) {
        schedulingView.nigthButton.isSelected = !schedulingView.nigthButton.isSelected
        
        if schedulingView.nigthButton.isSelected == true {
            schedulingView.nigthButton.setImage(UIImage(named: "checked_radio_button"), for: .normal)
        }
        else {
            schedulingView.nigthButton.setImage(UIImage(named: "radio_button"), for: .normal)
        }
    }
    
    @objc func checkedRadioButtonScheduleExam(_ sender: UIButton) {
        schedulingView.scheduleExameButton.isSelected = !schedulingView.scheduleExameButton.isSelected
        
        if schedulingView.scheduleExameButton.isSelected == true {
            schedulingView.scheduleExameButton.setImage(UIImage(named: "checked_radio_button"), for: .normal)
        }
        else {
            schedulingView.scheduleExameButton.setImage(UIImage(named: "radio_button"), for: .normal)
        }
    }
    
    @objc func checkedRadioButtonScheduleAppointment(_ sender: UIButton) {
        schedulingView.scheduleAppointmentButton.isSelected = !schedulingView.scheduleAppointmentButton.isSelected
        
        if schedulingView.scheduleAppointmentButton.isSelected == true {
            schedulingView.scheduleAppointmentButton.setImage(UIImage(named: "checked_radio_button"), for: .normal)
        }
        else {
            schedulingView.scheduleAppointmentButton.setImage(UIImage(named: "radio_button"), for: .normal)
        }
    }

}


extension SchedulingViewController {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentSize = CGSize(width: schedulingView.bounds.size.width, height: 970)
        print(UIScreen.main.bounds.size.height)
        print(scrollView.contentSize.height)
    }
}

