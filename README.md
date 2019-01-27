# XApp
A tiny tool that helps you quickly create iOS projects with strong foundations.

[![Gem Version](https://badge.fury.io/rb/xapp.svg)](https://badge.fury.io/rb/xapp)

## What does XApp do?
XApp initialises a new base iOS project with the essential tools for building a great app.

Uses [CocoaPods](https://cocoapods.org) for dependency management, preconfigured with:
- [R.swift](https://github.com/mac-cain13/R.swift) for strong-typed resources
- [SwiftLint](https://github.com/realm/SwiftLint) for linting
- [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) for logging
- [XRouter](https://github.com/reececomo/XRouter) for routing

## Basic Usage

```
# Install XApp
[sudo] gem install xapp

# Initialise a new iOS project
xapp init MyCoolApp
```

## Compatibility
XApp is compatible with all modern MVC and MVVM frameworks, including [RxSwift](https://github.com/ReactiveX/RxSwift).
