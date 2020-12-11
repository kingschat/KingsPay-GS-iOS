# KingsPay-GS-iOS
KingsPay for Goods &amp; Services for iOS
[![Apache 2.0 License](https://img.shields.io/badge/license-Apache%202.0-blue.svg?style=flat)](http://www.apache.org/licenses/LICENSE-2.0.html)

Swift version: 5

Supported iOS SDK version: 11.0 and higher

# Installation Guide

## Setup your Merchant account
Create your Merchant account following the section 1 of the [Developer's Guide](https://kingspay-gs-api.kingsch.at/pdfs/kingspay_goods_and_services_merchant_integration.pdf)

## Installation

#### [CocoaPods](https://cocoapods.org)
1 - add following into the Podfile:
```
source 'https://cdn.cocoapods.org/'
source 'https://github.com/kingschat/KingsPay-GS-iOS'

platform :ios, '11.0'

target 'YOUR_TARGET_NAME' do
    use_frameworks!
    pod 'AFNetworking'
    pod 'RxSwift'
    pod 'RxRelay'
    pod 'RxCocoa'
    pod 'SPTPersistentCache', :git => 'https://github.com/spotify/SPTPersistentCache', :commit => '697e464b6173063f526ec57f42221a4a94dcc86a'
    pod 'SwiftyRSA'
    pod 'GS', '0.2.0', :source => "git@github.com:kingschat/KingsPay-GS-iOS.git"
end
```
Replace YOUR_TARGET_NAME and then, in the Podfile directory, type:

`pod install --repo-update`

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
            clientId: "client_id"
        )
    )
```

`paymentId`: You can get the payment id as a result of initialize request ( [API Documentation](https://kingspay-gs-api.kingsch.at/docs/index.html#/Payment/Web_PaymentController_initialize) )

`clientId`: You can get the client id from your merchant account.

There are three possible outcomes you can get from the completion block:
``` swift
    public enum Result {
        case success
        case failure(Error)
        case abandoned
    }
```

## Sample

For more information check our [Sample application](https://github.com/kingschat/KingsPay-GS-iOS/tree/master/KingsPayGS-iOS-Sample).
