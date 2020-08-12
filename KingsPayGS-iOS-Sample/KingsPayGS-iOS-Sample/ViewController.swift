//
//  ViewController.swift
//  KingsPayGS-iOS-Sample
//
//  Created by Damian Kolasiński on 06/08/2020.
//  Copyright © 2020 KingsChat. All rights reserved.
//

import UIKit
import GS

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        KingsPayForGoodsAndServices.pay(
            usingContext: KingsPayForGoodsAndServices.PresentationContext(
                controller: self,
                completion: { paymentResult in print(paymentResult) }
            ),
            config: KingsPayForGoodsAndServices.PaymentConfig(
                paymentId: "YOUR_PAYMENT_ID",
                clientId: "YOUR_CLIENT_ID"
            )
        )
    }
}
