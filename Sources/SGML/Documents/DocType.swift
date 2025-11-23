public enum DocType: Sendable {
    case unspecified
    case html
    case xml

    ///
    /// HTML 4.01:
    /// <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    ///
    /// XHTML 1.1:
    /// <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    ///
    case custom(String)
}
