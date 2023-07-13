//
//  Observer.swift
//  Observer
//
//  Created by Марк Фокша on 13.07.2023.
//

import UIKit

protocol Observer: AnyObject {
    func update(subject: NotificationCenters)
}

class NotificationCenters {
    var state: Int = {
        Int(arc4random_uniform(10))
    }()
    
    private lazy var observers = [Observer]()
    
    func subscribe(_ observer: Observer) {
        print(#function)
        observers.append(observer)
    }
    
    func unSubscribe(_ observer: Observer) {
        if let index = observers.firstIndex(where: {$0 === observer} ) {
            observers.remove(at: index)
            print(#function)
        }
    }
    
    func notify() {
        print(#function)
        observers.forEach({ $0.update(subject: self) })
    }
    
    func someBusinessLogic() {
        print(#function)
        state = Int(arc4random_uniform(10))
        notify()
    }
}
