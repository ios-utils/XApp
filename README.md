# XApp
A tiny tool to help you quickly create iOS projects with strong foundations.

[![Gem Version](https://badge.fury.io/rb/xapp.svg)](https://badge.fury.io/rb/xapp)

<p align="center">
<img src="https://raw.githubusercontent.com/reececomo/XApp/master/XApp.jpg" alt="XApp" width="300" style="max-width:300px;width:auto;height:auto;"/>
</p>

## What does XApp do?
XApp initialises a new base iOS project with the essential tools for building a great app.

Uses [CocoaPods](https://cocoapods.org) for dependency management, preconfigured with:
- [R.swift](https://github.com/mac-cain13/R.swift) for strong-typed resources
- [Swinject](https://github.com/Swinject/Swinject) for dependency injection
- [SwiftLint](https://github.com/realm/SwiftLint) for linting
- [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) for logging
- [XRouter](https://github.com/reececomo/XRouter) for routing

As well as [Quick](https://github.com/Quick/Quick)/[Nimble](https://github.com/Quick/Nimble) for behavior-driven unit tests.

## Basic Usage

```bash
# Install XApp
[sudo] gem install xapp

# Initialise a new iOS project
xapp init MyCoolApp
```

## Compatibility
XApp is compatible with all modern MVC and MVVM frameworks, including [RxSwift](https://github.com/ReactiveX/RxSwift).
