//
// Created by Martin Mose Hansen on 2019-02-28.
// Copyright (c) 2019 Vertica A/S. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        let horizontalCenter: CGFloat = self.view.bounds.midX
        
        let departureControllerButton = UIButton(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        departureControllerButton.backgroundColor = .black      
        departureControllerButton.center = CGPoint(x: horizontalCenter, y: 300)
        departureControllerButton.setTitle("Go to DepartureController", for: .normal)
        departureControllerButton.addTarget(self, action: #selector(goToDepartureController), for: .touchUpInside)
        
        self.view.addSubview(departureControllerButton)

        let ticketControllerButton = UIButton(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        ticketControllerButton.backgroundColor = .black
        ticketControllerButton.center = CGPoint(x: horizontalCenter, y: 500)
        ticketControllerButton.setTitle("Go to TicketController", for: .normal)
        ticketControllerButton.addTarget(self, action: #selector(goToTicketController), for: .touchUpInside)

        self.view.addSubview(ticketControllerButton)
    }
    
    @objc func goToDepartureController(sender: UIButton!) {
        print("Button1 tapped")

        self.navigationController?.pushViewController(DepartureController(), animated: false)
    }

    @objc func goToTicketController(sender: UIButton!) {
        print("Button2 tapped")

        self.navigationController?.pushViewController(TicketController(), animated: false)
    }
}
