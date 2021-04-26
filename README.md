# Tokamak HTML Function Builder

A Simplify Tokamak HTML function builder 

## Hot to use

```swift
html("div", ["class" : "hello"]) {
    html("span", ["class" : "world"], content: "Hello, World!")
} // => <div><span>Hello, World!</span></div>
```
