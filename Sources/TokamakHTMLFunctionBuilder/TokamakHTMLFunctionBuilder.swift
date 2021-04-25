import Foundation
import TokamakDOM
import TokamakStaticHTML
import TokamakCore
import JavaScriptKit

public func html<Content: View>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    content: Content) -> some View
{
    HTML(tag, attributes) {
        content
    }
}

public func html<Content: StringProtocol>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    content: Content) -> some View
{
    HTML(tag, attributes, content: content)
}

public func html<Content: View>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    @ViewBuilder content: () -> Content) -> some View
{
    HTML(tag, attributes) {
        content()
    }
}

public typealias Listener = (JSObject) -> ()

public func html<Content: View>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    listeners: [String : Listener],
    content: Content) -> some View
{
    DynamicHTML(tag, attributes, listeners: listeners) {
        content
    }
}

public func html<Content: StringProtocol>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    listeners: [String : Listener],
    content: Content) -> some View
{
    DynamicHTML(tag, attributes, listeners: listeners, content: content)
}

public func html<Content: View>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    listeners: [String : Listener],
    @ViewBuilder content: () -> Content) -> some View
{
    DynamicHTML(tag, attributes, listeners: listeners) {
        content()
    }
}
