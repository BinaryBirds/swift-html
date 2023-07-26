//
//  Events.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Attribute {
    
    typealias JSFunction = String
    
    enum Event: String {
        // Windows
        case onAfterPrint       // Script to be run after the document is printed
        case onBeforePrint      // Script to be run before the document is printed
        case onBeforeUnload     // Script to be run when the document is about to be unloaded
        case onError            // Script to be run when an error occurs
        case onHashChange       // Script to be run when there has been changes to the anchor part of the a URL
        case onLoad             // Fires after the page is finished loading
        case onMessage          // Script to be run when the message is triggered
        case onOffline          // Script to be run when the browser starts to work offline
        case onOnline           // Script to be run when the browser starts to work online
        case onPageHide         // Script to be run when a user navigates away from a page
        case onPageShow         // Script to be run when a user navigates to a page
        case onPopState         // Script to be run when the window's history changes
        case onResize           // Fires when the browser window is resized
        case onStorage          // Script to be run when a Web Storage area is updated
        case onUnload           // Fires once a page has unloaded (or the browser window has been closed)
        // Forms
        case onBlur             // Fires the moment that the element loses focus
        case onChange           // Fires the moment when the value of the element is changed
        case onContextMenu      // Script to be run when a context menu is triggered
        case onFocus            // Fires the moment when the element gets focus
        case onInput            // Script to be run when an element gets user input
        case onInvalid          // Script to be run when an element is invalid
        case onReset            // Fires when the Reset button in a form is clicked
        case onSearch           // Fires when the user writes something in a search field (for <input="search">)
        case onSelect           // Fires after some text has been selected in an element
        case onSubmit           // Fires when a form is submitted
        // Keyboard
        case onKeyDown          // Fires when a user is pressing a key
        case onKeyPress         // Fires when a user presses a key
        case onKeyUp            // Fires when a user releases a key
        // Mouse
        case onClick            // Fires on a mouse click on the element
        case onDoubleClick      // Fires on a mouse double-click on the element
        case onMouseDown        // Fires when a mouse button is pressed down on an element
        case onMouseMove        // Fires when the mouse pointer is moving while it is over an element
        case onMouseOut         // Fires when the mouse pointer moves out of an element
        case onMouseOver        // Fires when the mouse pointer moves over an element
        case onMouseUp          // Fires when a mouse button is released over an element
        case onWheel            // Fires when the mouse wheel rolls up or down over an element
        // Drag and Drop
        case onDrag             // Script to be run when an element is dragged
        case onDragEnd          // Script to be run at the end of a drag operation
        case onDragEnter        // Script to be run when an element has been dragged to a valid drop target
        case onDragLeave        // Script to be run when an element leaves a valid drop target
        case onDragOver         // Script to be run when an element is being dragged over a valid drop target
        case onDragStart        // Script to be run at the start of a drag operation
        case onDrop             // Script to be run when dragged element is being dropped
        case onScroll           // Script to be run when an element's scrollbar is being scrolled
        // Clipboard
        case onCopy             // Fires when the user copies the content of an element
        case onCut              // Fires when the user cuts the content of an element
        case onPaste            // Fires when the user pastes some content in an element
        // Media
        case onAbort            // Script to be run on abort
        case onCanPlay          // Script to be run when a file is ready to start playing (when it has buffered enough to begin)
        case onCanPlaythrough   // Script to be run when a file can be played all the way to the end without pausing for buffering
        case onCueChange        // Script to be run when the cue changes in a <track> element
        case onDurationChange   // Script to be run when the length of the media changes
        case onEmptied          // Script to be run when something bad happens and the file is suddenly unavailable (like unexpectedly disconnects)
        case onEnded            // Script to be run when the media has reach the end (a useful event for messages like "thanks for listening")
        case onLoadedData       // Script to be run when media data is loaded
        case onLoadedMetadata   // Script to be run when meta data (like dimensions and duration) are loaded
        case onLoadStart        // Script to be run just as the file begins to load before anything is actually loaded
        case onPause            // Script to be run when the media is paused either by the user or programmatically
        case onPlay             // Script to be run when the media is ready to start playing
        case onPlaying          // Script to be run when the media actually has started playing
        case onProgress         // Script to be run when the browser is in the process of getting the media data
        case onRateChange       // Script to be run each time the playback rate changes (like when a user switches to a slow motion or fast forward mode)
        case onSeeked           // Script to be run when the seeking attribute is set to false indicating that seeking has ended
        case onSeeking          // Script to be run when the seeking attribute is set to true indicating that seeking is active
        case onStalled          // Script to be run when the browser is unable to fetch the media data for whatever reason
        case onSuspend          // Script to be run when fetching the media data is stopped before it is completely loaded for whatever reason
        case onTimeUpdate       // Script to be run when the playing position has changed (like when the user fast forwards to a different point in the media)
        case onVolumeChange     // Script to be run each time the volume is changed which (includes setting the volume to "mute")
        case onWaiting          // Script to be run when the media has paused but is expected to resume (like when the media pauses to buffer more data)
        // Misc
        case onToggle           // Fires when the user opens or closes the <details> element
    }
    
    struct EventFunction {
        let event: Event
        let function: JSFunction
    }
}

public extension Attribute {
    
    // source https://www.w3schools.com/tags/ref_language_codes.asp
    enum Lang: String {
        case abkhazian = "ab"
        case afar = "aa"
        case afrikaans = "af"
        case akan = "ak"
        case albanian = "sq"
        case amharic = "am"
        case arabic = "ar"
        case aragonese = "an"
        case armenian = "hy"
        case assamese = "as"
        case avaric = "av"
        case avestan = "ae"
        case aymara = "ay"
        case azerbaijani = "az"
        case bambara = "bm"
        case bashkir = "ba"
        case basque = "eu"
        case belarusian = "be"
        case bengali, bangla = "bn"
        case bihari = "bh"
        case bislama = "bi"
        case bosnian = "bs"
        case breton = "br"
        case bulgarian = "bg"
        case burmese = "my"
        case catalan = "ca"
        case chamorro = "ch"
        case chechen = "ce"
        case chichewa, Chewa, Nyanja = "ny"
        case chinese = "zh"
        case chineseSimplified = "zh-Hans"
        case chineseTraditional = "zh-Hant"
        case chuvash = "cv"
        case cornish = "kw"
        case corsican = "co"
        case cree = "cr"
        case croatian = "hr"
        case czech = "cs"
        case danish = "da"
        case divehi, Dhivehi, Maldivian = "dv"
        case dutch = "nl"
        case dzongkha = "dz"
        case english = "en"
        case esperanto = "eo"
        case estonian = "et"
        case ewe = "ee"
        case faroese = "fo"
        case fijian = "fj"
        case finnish = "fi"
        case french = "fr"
        case fula, Fulah, Pulaar, Pular = "ff"
        case galician = "gl"
        case gaelicScottish = "gd"
        case georgian = "ka"
        case german = "de"
        case greek = "el"
        case greenlandic, kalaallisut = "kl"
        case guarani = "gn"
        case gujarati = "gu"
        case haitianCreole = "ht"
        case hausa = "ha"
        case hebrew = "he"
        case herero = "hz"
        case hindi = "hi"
        case hiriMotu = "ho"
        case hungarian = "hu"
        case icelandic = "is"
        case ido = "io"
        case igbo = "ig"
        case indonesian = "id, in"
        case interlingua = "ia"
        case interlingue = "ie"
        case inuktitut = "iu"
        case inupiak = "ik"
        case irish = "ga"
        case italian = "it"
        case japanese = "ja"
        case javanese = "jv"
        case kannada = "kn"
        case kanuri = "kr"
        case kashmiri = "ks"
        case kazakh = "kk"
        case khmer = "km"
        case kikuyu = "ki"
        case kinyarwanda, rwanda = "rw"
        case kirundi = "rn"
        case kyrgyz = "ky"
        case komi = "kv"
        case kongo = "kg"
        case korean = "ko"
        case kurdish = "ku"
        case kwanyama = "kj"
        case lao = "lo"
        case latin = "la"
        case latvian, lettish = "lv"
        case limburgish, limburger = "li"
        case lingala = "ln"
        case lithuanian = "lt"
        case lugaKatanga = "lu"
        case luganda, Ganda = "lg"
        case luxembourgish = "lb"
        case manx = "gv"
        case macedonian = "mk"
        case malagasy = "mg"
        case malay = "ms"
        case malayalam = "ml"
        case maltese = "mt"
        case maori = "mi"
        case marathi = "mr"
        case marshallese = "mh"
        case moldavian = "mo"
        case mongolian = "mn"
        case nauru = "na"
        case navajo = "nv"
        case ndonga = "ng"
        case northernNdebele = "nd"
        case nepali = "ne"
        case norwegian = "no"
        case norwegianBokmål = "nb"
        case norwegianNynorsk = "nn"
        case nuosu, sichuanYi = "ii"
        case occitan = "oc"
        case ojibwe = "oj"
        case oldChurchSlavonic, oldBulgarian = "cu"
        case oriya = "or"
        case oromo, afaanOromo = "om"
        case ossetian = "os"
        case pāli = "pi"
        case pashto, Pushto = "ps"
        case persian, farsi = "fa"
        case polish = "pl"
        case portuguese = "pt"
        case punjabiEastern = "pa"
        case quechua = "qu"
        case romansh = "rm"
        case romanian = "ro"
        case russian = "ru"
        case sami = "se"
        case samoan = "sm"
        case sango = "sg"
        case sanskrit = "sa"
        case serbian = "sr"
        case serboCroatian = "sh"
        case sesotho = "st"
        case setswana = "tn"
        case shona = "sn"
        case sindhi = "sd"
        case sinhalese = "si"
        case siswati, swati = "ss"
        case slovak = "sk"
        case slovenian = "sl"
        case somali = "so"
        case southernNdebele = "nr"
        case spanish = "es"
        case sundanese = "su"
        case swahili, kiswahili = "sw"
        case swedish = "sv"
        case tagalog = "tl"
        case tahitian = "ty"
        case tajik = "tg"
        case tamil = "ta"
        case tatar = "tt"
        case telugu = "te"
        case thai = "th"
        case tibetan = "bo"
        case tigrinya = "ti"
        case tonga = "to"
        case tsonga = "ts"
        case turkish = "tr"
        case turkmen = "tk"
        case twi = "tw"
        case uyghur = "ug"
        case ukrainian = "uk"
        case urdu = "ur"
        case uzbek = "uz"
        case venda = "ve"
        case vietnamese = "vi"
        case volapük = "vo"
        case wallon = "wa"
        case welsh = "cy"
        case wolof = "wo"
        case westernFrisian = "fy"
        case xhosa = "xh"
        case yiddish = "yi, ji"
        case yoruba = "yo"
        case zhuang, Chuang = "za"
        case zulu = "zu"
    }
}

public extension Tag {
    
    @discardableResult
    func onEvent(_ e: Attribute.Event, _ function: Attribute.JSFunction?, _ condition: Bool = true) -> Self {
        attribute(e.rawValue.lowercased(), function, condition)
    }
    
    @discardableResult
    func onEvents(_ efs: [Attribute.EventFunction]?, condition: Bool = true) -> Self {
        guard let efs = efs, condition else { return self }
        _ = efs.map { appendToAttribute($0.event.rawValue, $0.function, separator: ";\r") }
        return self
    }
}
