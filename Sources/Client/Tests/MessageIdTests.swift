//
//  MessageIdTests.swift
//  Tinode
//
//  Created by Daniel Thorpe on 02/12/2015.
//  Copyright © 2015 Tinode. All rights reserved.
//

import XCTest
@testable import Tinode

class MessageIdTests: XCTestCase {

    var id: MessageId!

    func test__init()  {
        id = MessageId("hello world")
        XCTAssertEqual(id, "hello world")
    }

    func test__init_unicode_scalar_literal()  {
        id = MessageId(unicodeScalarLiteral: "hello world")
        XCTAssertEqual(id, "hello world")
    }

    func test__init_extended_grapheme_cluster_literal()  {
        id = MessageId(extendedGraphemeClusterLiteral: "hello world")
        XCTAssertEqual(id, "hello world")
    }

    func test__init_string_literal()  {
        id = "hello world"
        XCTAssertEqual(id, "hello world")
    }
}