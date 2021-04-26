//
//  TokamakHTMLFunctionBuilder.swift
//  TokamakHTMLFunctionBuilder
//
//  Created by evdwarf on 2021/04/26.
//

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
    DynamicHTML(tag,
                attributes,
                listeners: listeners.reduce(into: Dictionary<String, Listener>(), { (ret, dict) in
                    ret[dict.key.description] = dict.value
                }),
                content: {
                    content
                })
}

public func html<Content: StringProtocol>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    listeners: [GlobalEventHandler : Listener],
    content: Content) -> some View
{
    DynamicHTML(tag,
                attributes,
                listeners: listeners.reduce(into: Dictionary<String, Listener>(), { (ret, dict) in
                    ret[dict.key.rawValue] = dict.value
                }),
                content: content)
}

public func html<Content: View>(
    _ tag: String,
    attributes: [HTMLAttribute : String] = [:],
    listeners: [GlobalEventHandler : Listener],
    @ViewBuilder content: () -> Content) -> some View
{
    DynamicHTML(tag,
                attributes,
                listeners: listeners.reduce(into: Dictionary<String, Listener>(), { (ret, dict) in
                    ret[dict.key.rawValue] = dict.value
                }),
                content: {
                    content()
                })
}
