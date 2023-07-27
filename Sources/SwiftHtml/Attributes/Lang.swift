//
//  Language.swift
//  
//
//  Created by Brad Gourley on 7/26/23.
//

public extension Attribute {
    
    // source https://www.w3schools.com/tags/ref_language_codes.asp
    enum Language: String {
        case ab
        case aa
        case af
        case ak
        case sq
        case am
        case ar
        case an
        case hy
        case `as`
        case av
        case ae
        case ay
        case az
        case bm
        case ba
        case eu
        case be
        case bn
        case bh
        case bi
        case bs
        case br
        case bg
        case my
        case ca
        case ch
        case ce
        case ny
        case zh
        case zhHans = "zh-Hans"
        case zhHant = "zh-Hant"
        case cv
        case kw
        case co
        case cr
        case hr
        case cs
        case da
        case dv
        case nl
        case dz
        case en
        case eo
        case et
        case ee
        case fo
        case fj
        case fi
        case fr
        case ff
        case gl
        case gd
        case gv
        case ka
        case de
        case el
        case kl
        case gn
        case gu
        case ht
        case ha
        case he
        case hz
        case hi
        case ho
        case hu
        case `is`
        case io
        case ig
        case id
        case `in`
        case ia
        case ie
        case iu
        case ik
        case ga
        case it
        case ja
        case jv
        case kn
        case kr
        case ks
        case kk
        case km
        case ki
        case rw
        case rn
        case ky
        case kv
        case kg
        case ko
        case ku
        case kj
        case lo
        case la
        case lv
        case li
        case ln
        case lt
        case lu
        case lg
        case lb
        case mk
        case mg
        case ms
        case ml
        case mt
        case mi
        case mr
        case mh
        case mo
        case mn
        case na
        case nv
        case ng
        case nd
        case ne
        case no
        case nb
        case nn
        case ii
        case oc
        case oj
        case cu
        case or
        case om
        case os
        case pi
        case ps
        case fa
        case pl
        case pt
        case pa
        case qu
        case rm
        case ro
        case ru
        case se
        case sm
        case sg
        case sa
        case sr
        case sh
        case st
        case tn
        case sn
        case sd
        case si
        case ss
        case sk
        case sl
        case so
        case nr
        case es
        case su
        case sw
        case sv
        case tl
        case ty
        case tg
        case ta
        case tt
        case te
        case th
        case bo
        case ti
        case to
        case ts
        case tr
        case tk
        case tw
        case ug
        case uk
        case ur
        case uz
        case ve
        case vi
        case vo
        case wa
        case cy
        case wo
        case fy
        case xh
        case yi
        case yo
        case za
        case zu
        case ji
    }
    
    // source https://www.w3schools.com/tags/ref_country_codes.asp
    enum Country: String {
        case af
        case al
        case dz
        case `as`
        case ad
        case ao
        case aq
        case ag
        case ar
        case am
        case aw
        case au
        case at
        case az
        case bs
        case bh
        case bd
        case bb
        case by
        case be
        case bz
        case bj
        case bm
        case bt
        case bo
        case ba
        case bw
        case bv
        case br
        case io
        case bn
        case bg
        case bf
        case bi
        case kh
        case cm
        case ca
        case cv
        case ky
        case cf
        case td
        case cl
        case cn
        case cx
        case cc
        case co
        case km
        case cg
        case cd
        case ck
        case cr
        case ci
        case hr
        case cu
        case cy
        case cz
        case dk
        case dj
        case dm
        case `do`
        case ec
        case eg
        case sv
        case gq
        case er
        case ee
        case et
        case fk
        case fo
        case fj
        case fi
        case fr
        case gf
        case pf
        case tf
        case ga
        case gm
        case ge
        case de
        case gh
        case gi
        case gr
        case gl
        case gd
        case gp
        case gu
        case gt
        case gn
        case gw
        case gy
        case ht
        case hm
        case hn
        case hk
        case hu
        case `is`
        case `in`
        case id
        case ir
        case iq
        case ie
        case il
        case it
        case jm
        case jp
        case jo
        case kz
        case ke
        case ki
        case kp
        case kr
        case kw
        case kg
        case la
        case lv
        case lb
        case ls
        case lr
        case ly
        case li
        case lt
        case lu
        case mo
        case mk
        case mg
        case mw
        case my
        case mv
        case ml
        case mt
        case mh
        case mq
        case mr
        case mu
        case yt
        case mx
        case fm
        case md
        case mc
        case mn
        case me
        case ms
        case ma
        case mz
        case mm
        case na
        case nr
        case np
        case nl
        case an
        case nc
        case nz
        case ni
        case ne
        case ng
        case nu
        case nf
        case mp
        case no
        case om
        case pk
        case pw
        case ps
        case pa
        case pg
        case py
        case pe
        case ph
        case pn
        case pl
        case pt
        case pr
        case qa
        case re
        case ro
        case ru
        case rw
        case sh
        case kn
        case lc
        case pm
        case vc
        case ws
        case sm
        case st
        case sa
        case sn
        case rs
        case sc
        case sl
        case sg
        case sk
        case si
        case sb
        case so
        case za
        case gs
        case ss
        case es
        case lk
        case sd
        case sr
        case sj
        case sz
        case se
        case ch
        case sy
        case tw
        case tj
        case tz
        case th
        case tl
        case tg
        case tk
        case to
        case tt
        case tn
        case tr
        case tm
        case tc
        case tv
        case ug
        case ua
        case ae
        case gb
        case us
        case um
        case uy
        case uz
        case vu
        case ve
        case vn
        case vg
        case vi
        case wf
        case eh
        case ye
        case zm
        case zw
    }
    
    struct Lang {
        let language: Language
        let country: Country?
        
        public init(_ language: Language, _ country: Country? = nil) {
            self.language = language
            self.country = country
        }
        
        var rawValue: String {
            guard let country = country else {
                return language.rawValue
            }
            return language.rawValue + "-\(country.rawValue.uppercased())"
        }
    }
}

public extension Tag {
    
    @discardableResult
    func lang(_ l: Attribute.Lang?, _ condition: Bool = true) -> Self {
        guard let l = l, condition else { return self }
        return attribute("lang", l.rawValue)
    }
    
    @discardableResult
    func lang(_ language: Attribute.Language?, _ country: Attribute.Country? = nil, _ condition: Bool = true) -> Self {
        guard let language = language else { return self }
        let lang: Attribute.Lang = .init(language, country)
        return self.lang(lang, condition)
    }
}
