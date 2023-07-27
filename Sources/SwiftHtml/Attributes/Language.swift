//
//  Language.swift
//  
//
//  Created by Brad Gourley on 7/26/23.
//

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
    func lang(_ l: Attribute.Lang, _ condition: Bool = true) -> Self {
        attribute("lang", l.rawValue)
    }
}