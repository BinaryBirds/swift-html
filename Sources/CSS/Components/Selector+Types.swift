public func Root(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Selector(":root", builder)
}

public func All(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Selector("*", builder)
}

public func Element(
    _ name: HTMLElement,
    @Builder<Property> _ builder: () -> [Property]
) -> Selector {
    Selector(name.rawValue, builder)
}

public func Elements(
    _ names: [HTMLElement],
    @Builder<Property> _ builder: () -> [Property]
) -> Selector {
    Selector(names.map(\.rawValue).joined(separator: ","), builder)
}

public func Id(_ name: String, @Builder<Property> _ builder: () -> [Property])
    -> Selector
{
    Selector("#" + name, builder)
}

public func Class(
    _ name: String,
    @Builder<Property> _ builder: () -> [Property]
) -> Selector {
    Selector("." + name, builder)
}

public func Html(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.html, builder)
}

public func Body(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.body, builder)
}

public func Address(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.address, builder)
}

public func Article(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.article, builder)
}

public func Aside(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.aside, builder)
}

public func Footer(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.footer, builder)
}

public func Header(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.header, builder)
}

public func H1(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h1, builder)
}

public func H2(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h2, builder)
}

public func H3(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h3, builder)
}

public func H4(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h4, builder)
}

public func H5(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h5, builder)
}

public func H6(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.h6, builder)
}

public func Main(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.main, builder)
}

public func Nav(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.nav, builder)
}

public func Section(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.section, builder)
}

public func Blockquote(@Builder<Property> _ builder: () -> [Property])
    -> Selector
{
    Element(.blockquote, builder)
}

public func Dd(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.dd, builder)
}

public func Div(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.div, builder)
}

public func Dl(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.dl, builder)
}

public func Dt(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.dt, builder)
}

public func Figcaption(@Builder<Property> _ builder: () -> [Property])
    -> Selector
{
    Element(.figcaption, builder)
}

public func Figure(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.figure, builder)
}

public func Hr(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.hr, builder)
}

public func Li(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.li, builder)
}

public func Ol(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.ol, builder)
}

public func P(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.p, builder)
}

public func Pre(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.pre, builder)
}

public func Ul(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.ul, builder)
}

public func A(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.a, builder)
}

public func Abbr(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.abbr, builder)
}

public func B(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.b, builder)
}

public func Bdi(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.bdi, builder)
}

public func Bdo(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.bdo, builder)
}

public func Br(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.br, builder)
}

public func Cite(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.cite, builder)
}

public func Code(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.code, builder)
}

public func Data(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.data, builder)
}

public func Dfn(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.dfn, builder)
}

public func Em(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.em, builder)
}

public func I(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.i, builder)
}

public func Kbd(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.kbd, builder)
}

public func Mark(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.mark, builder)
}

public func Q(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.q, builder)
}

public func Ruby(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.ruby, builder)
}

public func S(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.s, builder)
}

public func Samp(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.samp, builder)
}

public func Small(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.small, builder)
}

public func Span(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.span, builder)
}

public func Strong(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.strong, builder)
}

public func Sub(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.sub, builder)
}

public func Sup(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.sup, builder)
}

public func Time(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.time, builder)
}

public func U(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.u, builder)
}

public func Var(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.var, builder)
}

public func Wbr(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.wbr, builder)
}

public func Area(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.area, builder)
}

public func Audio(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.html, builder)
}

public func Img(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.img, builder)
}

public func Map(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.map, builder)
}

public func Track(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.track, builder)
}

public func Video(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.video, builder)
}

public func Embed(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.embed, builder)
}

public func Iframe(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.iframe, builder)
}

public func Object(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.object, builder)
}

public func Param(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.param, builder)
}

public func Picture(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.picture, builder)
}

public func Portal(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.portal, builder)
}

public func Source(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.source, builder)
}

public func Svg(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.svg, builder)
}

public func Math(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.math, builder)
}

public func Canvas(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.canvas, builder)
}

public func Noscript(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.noscript, builder)
}

public func Script(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.script, builder)
}

public func Del(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.del, builder)
}

public func Ins(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.ins, builder)
}

public func Caption(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.caption, builder)
}

public func Col(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.col, builder)
}

public func Colgroup(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.colgroup, builder)
}

public func Table(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.table, builder)
}

public func Tbody(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.tbody, builder)
}

public func Td(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.td, builder)
}

public func Tfoot(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.tfoot, builder)
}

public func Th(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.th, builder)
}

public func Thead(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.thead, builder)
}

public func Tr(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.tr, builder)
}

public func Button(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.button, builder)
}

public func Datalist(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.datalist, builder)
}

public func Fieldset(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.fieldset, builder)
}

public func Form(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.form, builder)
}

public func Input(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.input, builder)
}

public func Label(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.label, builder)
}

public func Legend(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.legend, builder)
}

public func Meter(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.meter, builder)
}

public func Optgroup(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.optgroup, builder)
}

public func Option(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.option, builder)
}

public func Output(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.output, builder)
}

public func Progress(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.progress, builder)
}

public func Select(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.select, builder)
}

public func Textarea(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.textarea, builder)
}

public func Details(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.details, builder)
}

public func Dialog(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.dialog, builder)
}

public func Menu(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.menu, builder)
}

public func Summary(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.summary, builder)
}

public func Slot(@Builder<Property> _ builder: () -> [Property]) -> Selector {
    Element(.slot, builder)
}

public func Template(@Builder<Property> _ builder: () -> [Property]) -> Selector
{
    Element(.template, builder)
}
