public func Root(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Selector(":root", builder)
}

public func All(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Selector("*", builder)
}

public func Element(
    _ name: HTMLElement,
    @Builder<any Property> _ builder: () -> [any Property]
) -> Selector {
    Selector(name.rawValue, builder)
}

public func Elements(
    _ names: [HTMLElement],
    @Builder<any Property> _ builder: () -> [any Property]
) -> Selector {
    Selector(names.map(\.rawValue).joined(separator: ","), builder)
}

public func Id(
    _ name: String,
    @Builder<any Property> _ builder: () -> [any Property]
)
    -> Selector
{
    Selector("#" + name, builder)
}

public func Class(
    _ name: String,
    @Builder<any Property> _ builder: () -> [any Property]
) -> Selector {
    Selector("." + name, builder)
}

public func Html(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.html, builder)
}

public func Body(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.body, builder)
}

public func Address(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.address, builder)
}

public func Article(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.article, builder)
}

public func Aside(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.aside, builder)
}

public func Footer(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.footer, builder)
}

public func Header(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.header, builder)
}

public func H1(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h1, builder)
}

public func H2(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h2, builder)
}

public func H3(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h3, builder)
}

public func H4(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h4, builder)
}

public func H5(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h5, builder)
}

public func H6(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.h6, builder)
}

public func Main(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.main, builder)
}

public func Nav(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.nav, builder)
}

public func Section(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.section, builder)
}

public func Blockquote(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.blockquote, builder)
}

public func Dd(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.dd, builder)
}

public func Div(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.div, builder)
}

public func Dl(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.dl, builder)
}

public func Dt(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.dt, builder)
}

public func Figcaption(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.figcaption, builder)
}

public func Figure(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.figure, builder)
}

public func Hr(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.hr, builder)
}

public func Li(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.li, builder)
}

public func Ol(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.ol, builder)
}

public func P(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.p, builder)
}

public func Pre(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.pre, builder)
}

public func Ul(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.ul, builder)
}

public func A(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.a, builder)
}

public func Abbr(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.abbr, builder)
}

public func B(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.b, builder)
}

public func Bdi(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.bdi, builder)
}

public func Bdo(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.bdo, builder)
}

public func Br(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.br, builder)
}

public func Cite(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.cite, builder)
}

public func Code(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.code, builder)
}

public func Data(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.data, builder)
}

public func Dfn(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.dfn, builder)
}

public func Em(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.em, builder)
}

public func I(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.i, builder)
}

public func Kbd(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.kbd, builder)
}

public func Mark(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.mark, builder)
}

public func Q(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.q, builder)
}

public func Ruby(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.ruby, builder)
}

public func S(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.s, builder)
}

public func Samp(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.samp, builder)
}

public func Small(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.small, builder)
}

public func Span(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.span, builder)
}

public func Strong(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.strong, builder)
}

public func Sub(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.sub, builder)
}

public func Sup(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.sup, builder)
}

public func Time(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.time, builder)
}

public func U(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.u, builder)
}

public func Var(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.var, builder)
}

public func Wbr(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.wbr, builder)
}

public func Area(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.area, builder)
}

public func Audio(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.html, builder)
}

public func Img(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.img, builder)
}

public func Map(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.map, builder)
}

public func Track(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.track, builder)
}

public func Video(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.video, builder)
}

public func Embed(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.embed, builder)
}

public func Iframe(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.iframe, builder)
}

public func Object(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.object, builder)
}

public func Param(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.param, builder)
}

public func Picture(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.picture, builder)
}

public func Portal(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.portal, builder)
}

public func Source(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.source, builder)
}

public func Svg(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.svg, builder)
}

public func Math(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.math, builder)
}

public func Canvas(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.canvas, builder)
}

public func Noscript(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.noscript, builder)
}

public func Script(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.script, builder)
}

public func Del(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.del, builder)
}

public func Ins(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.ins, builder)
}

public func Caption(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.caption, builder)
}

public func Col(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.col, builder)
}

public func Colgroup(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.colgroup, builder)
}

public func Table(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.table, builder)
}

public func Tbody(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.tbody, builder)
}

public func Td(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.td, builder)
}

public func Tfoot(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.tfoot, builder)
}

public func Th(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.th, builder)
}

public func Thead(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.thead, builder)
}

public func Tr(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.tr, builder)
}

public func Button(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.button, builder)
}

public func Datalist(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.datalist, builder)
}

public func Fieldset(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.fieldset, builder)
}

public func Form(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.form, builder)
}

public func Input(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.input, builder)
}

public func Label(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.label, builder)
}

public func Legend(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.legend, builder)
}

public func Meter(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.meter, builder)
}

public func Optgroup(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.optgroup, builder)
}

public func Option(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.option, builder)
}

public func Output(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.output, builder)
}

public func Progress(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.progress, builder)
}

public func Select(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.select, builder)
}

public func Textarea(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.textarea, builder)
}

public func Details(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.details, builder)
}

public func Dialog(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.dialog, builder)
}

public func Menu(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.menu, builder)
}

public func Summary(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.summary, builder)
}

public func Slot(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.slot, builder)
}

public func Template(@Builder<any Property> _ builder: () -> [any Property])
    -> Selector
{
    Element(.template, builder)
}
