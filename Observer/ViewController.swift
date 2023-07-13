//
//  ViewController.swift
//  Observer
//
//  Created by Марк Фокша on 13.07.2023.
//

import UIKit

class ViewController: UIViewController, Observer {
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    let notificationCenter = NotificationCenters()
    let observer1 = ConcreteObserverA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switcher.isOn = false
    }
    
    func update(subject: NotificationCenters) {
        label.text = "State subject: \(subject.state)"
    }
    

    @IBAction func updateAction(_ sender: UIButton) {
        notificationCenter.someBusinessLogic()
        
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            notificationCenter.subscribe(self)
            notificationCenter.subscribe(observer1)
        } else {
            notificationCenter.unSubscribe(self)
            notificationCenter.unSubscribe(observer1)
        }
    }
    
}

