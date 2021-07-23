//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public enum RefererPolicy: String {
    /// No referrer information is sent
    case noReferrer = "no-referrer"
    /// Default. Sends the origin, path, and query string if the protocol security level stays the same or is higher (HTTP to HTTP, HTTPS to HTTPS, HTTP to HTTPS is ok). Sends nothing to less secure level (HTTPS to HTTP is not ok)
    case noReferrerWhenDowngrade = "no-referrer-when-downgrade"
    /// Sends the origin (scheme, host, and port) of the document
    case origin
    /// Sends the origin of the document for cross-origin request. Sends the origin, path, and query string for same-origin request
    case originWhenCrossOrigin = "origin-when-cross-origin"
    /// Sends a referrer for same-origin request. Sends no referrer for cross-origin request
    case sameOrigin = "same-origin"
    /// ???
    ///case strictOrigin = "strict-origin"
    /// Sends the origin if the protocol security level stays the same or is higher (HTTP to HTTP, HTTPS to HTTPS, and HTTP to HTTPS is ok). Sends nothing to less secure level (HTTPS to HTTP)
    case strictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"
    /// Sends the origin, path, and query string (regardless of security). Use this value carefully!
    case unsafeUrl = "unsafe-url"
}
