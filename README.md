![](https://github.com/YNVSolutions/Swift_Cause_IOS/blob/main/banner.png)

# 📱 Swift Cause – iOS App
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg?style=flat-square)](https://semver.org)
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![Last Commit](https://img.shields.io/github/last-commit/YNVSolutions/Swift_Cause_IOS.svg?style=flat-square)](https://github.com/YNVSolutions/Swift_Cause_IOS/commits/main)
[![Issues Open](https://img.shields.io/github/issues/YNVSolutions/Swift_Cause_IOS.svg?style=flat-square)](https://github.com/YNVSolutions/Swift_Cause_IOS/issues)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/YNVSolutions/Swift_Cause_IOS/pulls)

**Swift Cause** is a modern, open source mobile donation platform built for nonprofits. This iOS app empowers organizations and their supporters to manage and contribute to fundraising campaigns on the go. Developed using Swift and SwiftUI, it combines shared business logic with a native interface for a fast, secure, and intuitive experience.

> 🇬🇧 Initially designed for the UK market with Gift Aid support and GBP transactions, but built with global scalability in mind.

---

## 🚀 Features

### 🎯 For Nonprofits
- **Campaign Management**: Create, edit, and track fundraising campaigns from your phone.
- **Team Collaboration**: Add and manage team members with role-based access.
- **Live Dashboard**: View real-time donations and campaign progress with Firebase sync.

### 💸 For Donors
- **One-Tap Donations**: Quickly donate using saved methods or Apple Pay.
- **Recurring Support**: Set up monthly or yearly recurring donations.
- **Gift Aid Integration (UK)**: Maximize contributions through tax-effective giving.

### 📱 Mobile-First Payments
- **Secure Mobile Transactions**: Accept payments via Stripe or SumUp directly from your iPhone.
- **QR Code Support**: Scan and donate quickly.
- **Tap to Donate**: NFC-ready for quick, contactless contributions.

### 📢 Engagement & Sharing
- **Push Notifications**: Stay updated on campaign milestones and thank-you messages.
- **Social Sharing**: Boost reach with built-in sharing tools (Facebook, Twitter, LinkedIn).
- **Peer-to-Peer Fundraising**: Donors can support campaigns and invite friends.

---

## 🛠️ Tech Stack

| Component              | Technology |
|------------------------|------------|
| ![Swift](https://img.shields.io/badge/Swift-iOS-orange.svg?logo=swift) | Shared business logic via **Swift** |
| ![SwiftUI](https://img.shields.io/badge/SwiftUI-iOS-orange?logo=swift&logoColor=white) | Native iOS interface |
| ![Firebase](https://img.shields.io/badge/Firebase-Backend-yellow?logo=firebase&logoColor=white) | Authentication, Realtime Database, Cloud Functions |
| ![Stripe](https://img.shields.io/badge/Stripe-Payments-635bff?logo=stripe&logoColor=white) | Secure mobile donation processing |
| ![SumUp](https://img.shields.io/badge/SumUp-SDK-blue?logo=sumup&logoColor=white) | Mobile card payment integration |
| ![Apple](https://img.shields.io/badge/Apple%20Pay-Supported-black?logo=applepay&logoColor=white) | Contactless donations |
| ![CI/CD](https://img.shields.io/badge/Vercel%20&%20GitHub%20Actions-Deployment-black?logo=vercel&logoColor=white&label=CI%2FCD) | Automated deployment & previews |
| ![Xcode](https://img.shields.io/badge/Xcode-15.0-blue.svg?logo=xcode) |Development platform |

---

## 📦 Installation

- ![Xcode](https://img.shields.io/badge/Xcode-14%2B-blue)
- ![Kotlin](https://img.shields.io/badge/Kotlin-1.9%2B-F0B300)
- ![Cocoapods](https://img.shields.io/badge/Cocoapods-Firebase%20%26%20Stripe%20SDKs-lightgrey)


```bash
git clone https://github.com/your-org/swift-cause-ios.git
cd swift-cause-ios
pod install
open SwiftCause.xcworkspace
```

## Development Environment (Xcode)

To develop and debug this application, you will primarily use Xcode.

* **Debugging:** Xcode provides powerful debugging tools. Set breakpoints by clicking on the line numbers in the source editor. Run the app, and execution will pause at your breakpoints, allowing you to inspect variables, step through code, and more.
* **Simulators:** Test your app on various iPhone and iPad simulators available in Xcode.
* **Device Testing:** Connect your iOS device, and select it from the scheme dropdown to run and debug on a physical device.

For more information on using Xcode, refer to the [official Apple Developer Documentation](https://developer.apple.com/documentation/xcode).

---

## Supported iOS Versions

This application is developed to support iOS versions [e.g., iOS 15.0 and above]. For optimal performance and access to the latest features, it is recommended to run the app on the latest available iOS version.

---
