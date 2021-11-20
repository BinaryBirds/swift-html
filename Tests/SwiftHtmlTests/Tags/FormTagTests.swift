//
//  FormTagTests.swift
//  SwiftHtmlTests
//
//  Created by Tibor Bodecs on 2021. 08. 08..
//

import XCTest
@testable import SwiftHtml

final class FormTagTests: XCTestCase {

    func testForm() {
        let doc = Document(.html) {
            Form {
                Section {
                    Label("Email address")
                        .for("email")
                    Input()
                        .type(.email)
                        .id("email")
                        .placeholder("Your email address")
                        .value("root@localhost.com")
                }
                Section {
                    Label("Password")
                        .for("password")
                    Input()
                        .type(.password)
                        .id("password")
                        .placeholder("Your password")
                }
                Section {
                    Input()
                        .type(.submit)
                        .value("Sign in")
                }
            }
            .enctype(.multipart)
            .method(.post)
            .action("/sign-in/")
        }

        print(DocumentRenderer(doc).render(minify: false))

//        XCTAssertTrue(true)
    }
    
}
