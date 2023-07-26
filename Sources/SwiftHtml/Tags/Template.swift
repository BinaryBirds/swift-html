//
//  Template.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<template>` tag is used as a container to hold some HTML content hidden from the user when the page loads.
///
/// The content inside `<template>` can be rendered later with a JavaScript.
///
/// You can use the `<template>` tag if you have some HTML code you want to use over and over again, but not until you ask for it.
/// To do this without the `<template>` tag, you have to create the HTML code with JavaScript to prevent the browser from rendering the code.
open class Template: StandardTag {
    
    override open class var name: String { .init(describing: Template.self).lowercased() }
}



