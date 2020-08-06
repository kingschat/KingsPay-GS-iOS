# KingsPay-GS-iOS
KingsPay for Goods &amp; Services for iOS
[![Apache 2.0 License](https://img.shields.io/badge/license-Apache%202.0-blue.svg?style=flat)](http://www.apache.org/licenses/LICENSE-2.0.html)

Swift version: 5

Supported iOS SDK version: 11.0 and higher

# Installation Guide

## Setup your Merchant account
Create your Merchant account following the section 1 of the [Developer's Guide](https://kingspay-gs-api.kingsch.at/pdfs/kingspay_goods_and_services_merchant_integration.pdf)

## Installation

#### [Carthage](https://github.com/Carthage/Carthage)
1 - add following into the Cartfile:
```
github "kingschat/KingsPay-GS-iOS" "master"
```
2 - run `carthage update`

## Implementation
1 - Initialize the payment using KingsPay G&S API as described in section 3 of the [Developer's Guide](https://kingspay-gs-api.kingsch.at/pdfs/kingspay_goods_and_services_merchant_integration.pdf)

2 - `import GS` to the project

3 - Add the following code:

```swift
    KingsPayForGoodsAndServices.pay(
        usingContext: .init(
            controller: rootController,
            completion: { result in }
        ),
        config: .init(
            paymentId: "payment_id",
            clientId: "client_id",
            environment: .staging
        )
    )
```

`paymentId`: You can get the payment id as a result of initialize request ( API Documentations: [Production API](https://kingspay-gs-api.kingsch.at/docs/index.html#/Payment/Web_PaymentController_initialize), [Staging API](https://kpay-gs-api.appunite.net/docs/index.html#/Payment/Web_PaymentController_initialize) )

`clientId`: You can get the client id from your merchant account.

`environment`: There are two environments : `Staging` and `Production`. You can use `Staging` environment for testing.

There are two possible outcomes you can get from the completion block:
``` swift
    public enum Result {
        case success
        case failure(Error)
    }
```

## Sample

For more information check our [Sampe](https://github.com/kingschat/KingsPay-GS-iOS/tree/master/kingspay-gs/Sample) application.
