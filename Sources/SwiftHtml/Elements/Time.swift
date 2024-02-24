//
//  Time.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<time>` tag defines a specific time (or datetime).
///
/// The datetime attribute of this element is used translate the time into a machine-readable format so that browsers can offer to add date reminders through the user's calendar, and search engines can produce smarter search results.
open class Time: Tag {

}

extension Time {

    /// Represent a machine-readable format of the `<time>` element
    ///
    /// `YYYY-MM-DDThh:mm:ssTZD`
    /// or
    /// `PTDHMS`    The date or time being specified. Explanation of components:
    ///
    /// - YYYY - year (e.g. 2011)
    /// - MM - month (e.g. 01 for January)
    /// - DD - day of the month (e.g. 08)
    /// - T or a space - a separator (required if time is also specified)
    /// - hh - hour (e.g. 22 for 10.00pm)
    /// - mm - minutes (e.g. 55)
    /// - ss - seconds (e.g. 03)
    /// - TZD - Time Zone Designator (Z denotes Zulu, also known as Greenwich Mean Time)
    /// - P - a prefix for "Period"
    /// - D - a prefix for "Days"
    /// - H - a prefix for "Hours"
    /// - M - a prefix for "Minutes"
    /// - S - a prefix for "Seconds"
    public func datetime(_ value: String) -> Self {
        attribute("datetime", value)
    }
}
