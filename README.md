# 📱 Swift Cause – iOS App

**Swift Cause** is a modern, open source mobile donation platform built for nonprofits. This iOS app empowers organizations and their supporters to manage and contribute to fundraising campaigns on the go. Developed using **Kotlin Multiplatform Mobile (KMM)**, it combines shared business logic with a native SwiftUI interface for a fast, secure, and intuitive experience.

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
| ![Kotlin](https://img.shields.io/badge/Kotlin-1.9-blueviolet?logo=kotlin&logoColor=white) | Shared business logic via **Kotlin Multiplatform Mobile** |
| ![SwiftUI](https://img.shields.io/badge/SwiftUI-iOS-orange?logo=swift&logoColor=white) | Native iOS interface |
| ![Firebase](https://img.shields.io/badge/Firebase-Backend-yellow?logo=firebase&logoColor=white) | Authentication, Realtime Database, Cloud Functions |
| ![Stripe](https://img.shields.io/badge/Stripe-Payments-635bff?logo=stripe&logoColor=white) | Secure mobile donation processing |
| ![SumUp](https://img.shields.io/badge/SumUp-SDK-blue?logo=sumup&logoColor=white) | Mobile card payment integration |
| ![Apple](https://img.shields.io/badge/Apple%20Pay-Supported-black?logo=applepay&logoColor=white) | Contactless donations |
| ![CI/CD](https://img.shields.io/badge/Vercel%20&%20GitHub%20Actions-Deployment-black?logo=vercel&logoColor=white&label=CI%2FCD) | Automated deployment & previews |

---

## 📦 Installation

> **Prerequisites**
- Xcode 14+
- Kotlin 1.9+
- Cocoapods (for Firebase & Stripe SDK integration)

```bash
git clone https://github.com/your-org/swift-cause-ios.git
cd swift-cause-ios
pod install
open SwiftCause.xcworkspace
