# XApp
Quickly create scalable, production ready iOS projects built on solid foundations.

[![Gem Version](https://badge.fury.io/rb/xapp.svg)](https://badge.fury.io/rb/xapp)

<p align="center">
<img src="https://raw.githubusercontent.com/reececomo/XApp/master/XApp.jpg" alt="XApp" width="300" style="max-width:300px;width:auto;height:auto;"/>
</p>

## What does XApp do?
XApp helps you quickly setup new Apps, preconfigured with the essentials:

Uses [CocoaPods](https://cocoapods.org) for dependency management, preconfigured with:
- [Moya](https://github.com/Moya/Moya)/[ModelMapper](https://github.com/sunshinejr/Moya-ModelMapper) for networking and API response mapping
- [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) for logging
- [R.swift](https://github.com/mac-cain13/R.swift) for static-typed compile-time resources
- [RxSwift/RxCocoa](https://www.github.com/ReactiveX/RxSwift) for reactive programming and data-binding
- [Swinject](https://github.com/Swinject/Swinject) for dependency injection
- [SwiftLint](https://github.com/realm/SwiftLint) for linting
- [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) for logging
- [XRouter](https://github.com/reececomo/XRouter) for routing

As well as [Quick](https://github.com/Quick/Quick)/[Nimble](https://github.com/Quick/Nimble) for your behavior-driven unit tests.

## Basic Usage

```bash
# Install XApp
[sudo] gem install xapp

# Initialise a new iOS project
xapp init MyCoolApp
```

## Compatibility
XApp is compatible with all modern MVC and MVVM frameworks, including [RxSwift](https://github.com/ReactiveX/RxSwift).
