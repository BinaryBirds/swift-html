//
//  Title.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<title>` tag defines the title of the document.
/// The title must be text-only, and it is shown in the browser's title bar or in the page's tab.
///
/// The `<title>` tag is required in HTML documents!
///
/// The contents of a page title is very important for search engine optimization (SEO)!
/// The page title is used by search engine algorithms to decide the order when listing pages in search results.
///
/// The `<title>` element:
///
/// defines a title in the browser toolbar
/// provides a title for the page when it is added to favorites
/// displays a title for the page in search-engine results
/// Here are some tips for creating good titles:
///
/// Go for a longer, descriptive title (avoid one- or two-word titles)
/// Search engines will display about 50-60 characters of the title, so try not to have titles longer than that
/// Do not use just a list of words as the title (this may reduce the page's position in search results)
/// So, try to make the title as accurate and meaningful as possible!
///
/// **Note:** You can NOT have more than one `<title>` element in an HTML document.
open class Title: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
