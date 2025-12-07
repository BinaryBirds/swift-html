extension Double {

    // NOTE: This is a hack, but it works without using Foundation
    var preciseString: String {
        if self - Double(Int(self)) == 0 {
            return String(Int(self))
        }
        return String(self)
    }

}
