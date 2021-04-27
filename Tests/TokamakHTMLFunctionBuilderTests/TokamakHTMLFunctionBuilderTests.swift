//
//  TokamakHTMLFunctionBuilderTests.swift
//  TokamakHTMLFunctionBuilder
//
//  Created by evdwarf on 2021/04/26.
//

import XCTest
@testable import TokamakHTMLFunctionBuilder

final class TokamakHTMLFunctionBuilderTests: XCTestCase {
    func testStaticTextHTML() {
        XCTAssertEqual("\(html("div", content: "hello"))", """
            HTML<String>(tag: "div", attributes: [:], content: "hello", innerHTML: Optional("hello"))
            """
            )
    }
    
    func testStaticEmptyHTML() {
        XCTAssertEqual("\(html("div"))", """
            HTML<EmptyView>(tag: "div", attributes: [:], content: TokamakCore.EmptyView(), innerHTML: nil)
            """
            )
    }
    
    func testDynamicTextHTML() {
        XCTAssertEqual("\(html("div", listeners: [.click : { _ in }], content: "hello"))", """
            DynamicHTML<String>(tag: "div", attributes: [:], listeners: ["click": (Function)], content: "hello", innerHTML: Optional("hello"))
            """
            )
    }
    
    func testDynamicEmptyHTML() {
        XCTAssertEqual("\(html("div", listeners: [.click : { _ in }]))", """
            DynamicHTML<EmptyView>(tag: "div", attributes: [:], listeners: ["click": (Function)], content: TokamakCore.EmptyView(), innerHTML: nil)
            """
            )
    }

    static var allTests = [
        ("testStaticTextHTML", testStaticTextHTML),
        ("testStaticEmptyHTML", testStaticEmptyHTML),
        ("testDynamicTextHTML", testDynamicTextHTML),
        ("testDynamicEmptyHTML", testDynamicEmptyHTML),
    ]
}
