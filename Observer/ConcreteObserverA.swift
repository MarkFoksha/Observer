//
//  ConcreteObserverA.swift
//  Observer
//
//  Created by Марк Фокша on 13.07.2023.
//

import UIKit

class ConcreteObserverA: Observer {
    func update(subject: NotificationCenters) {
        print("ConcreteObserverA: \(subject.state)")
    }
    
}
