import DOM
import SGML

/// The `<script>` tag is used to embed a client-side script (JavaScript).
///
/// The `<script>` element either contains scripting statements, or it points to an external script file through the src attribute.
///
/// Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
public struct Script:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    TypeAttributeModifier,
    SrcAttributeModifier,
    BlockingAttributeModifier,
    CrossOriginAttributeModifier,
    ReferrerPolicyAttributeModifier,
    IntegrityAttributeModifier,
    FetchPriorityAttributeModifier,
    AsyncAttributeModifier,
    DeferAttributeModifier,
    NoModuleAttributeModifier,
    // categories
    MetadataContent,
    FlowContent,
    PhrasingContent,
    ScriptSupportingContent,
    SelectInnerContent,
    OptgroupInnerContent
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    public init(
        _ contents: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(contents, isRaw: true)
        ]
    }

    public init() {
        self.attributes = .init()
        self.children = []
    }
}
