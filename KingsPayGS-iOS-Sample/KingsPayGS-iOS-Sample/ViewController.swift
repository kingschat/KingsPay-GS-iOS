//
//  ViewController.swift
//  KingsPayGS-iOS-Sample
//
//  Created by Damian Kolasiński on 06/08/2020.
//  Copyright © 2020 KingsChat. All rights reserved.
//

import UIKit
import 

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        KingsPayForGoodsAndServices.pay(
            usingContext: KingsPayForGoodsAndServices.PresentationContext(
                controller: self,
                completion: { paymentResult in print(paymentResult) }
            ),
            config: KingsPayForGoodsAndServices.PaymentConfig(
                paymentId: "",
                clientId: "",
                environment: .production
            )
        )
    }
}
