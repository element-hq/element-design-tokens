import SwiftUI

// MARK: SwiftUI

extension Color {
    public static let element = ElementColors()
}

public struct ElementColors {
    public var globalAzure: Color { Color("globalAzure", bundle: Bundle.module) }
    public var globalKiwi: Color { Color("globalKiwi", bundle: Bundle.module) }
    public var globalGrape: Color { Color("globalGrape", bundle: Bundle.module) }
    public var globalVerde: Color { Color("globalVerde", bundle: Bundle.module) }
    public var globalPolly: Color { Color("globalPolly", bundle: Bundle.module) }
    public var globalMelon: Color { Color("globalMelon", bundle: Bundle.module) }
    public var globalElementGreen: Color { Color("globalElementGreen", bundle: Bundle.module) }
    public var globalWhite: Color { Color("globalWhite", bundle: Bundle.module) }
    public var globalVermillon: Color { Color("globalVermillon", bundle: Bundle.module) }
    public var globalEms: Color { Color("globalEms", bundle: Bundle.module) }
    public var globalAqua: Color { Color("globalAqua", bundle: Bundle.module) }
    public var globalPrune: Color { Color("globalPrune", bundle: Bundle.module) }
    public var globalLinks: Color { Color("globalLinks", bundle: Bundle.module) }
    public var globalGrey25: Color { Color("globalGrey25", bundle: Bundle.module) }
    public var globalGrey50: Color { Color("globalGrey50", bundle: Bundle.module) }
    public var globalGrey100: Color { Color("globalGrey100", bundle: Bundle.module) }
    public var globalGrey150: Color { Color("globalGrey150", bundle: Bundle.module) }
    public var globalGrey200: Color { Color("globalGrey200", bundle: Bundle.module) }
    public var globalGrey250: Color { Color("globalGrey250", bundle: Bundle.module) }
    public var globalGrey300: Color { Color("globalGrey300", bundle: Bundle.module) }
    public var globalGrey400: Color { Color("globalGrey400", bundle: Bundle.module) }
    public var globalGrey450: Color { Color("globalGrey450", bundle: Bundle.module) }
    public var globalBlack800: Color { Color("globalBlack800", bundle: Bundle.module) }
    public var globalBlack900: Color { Color("globalBlack900", bundle: Bundle.module) }
    public var globalBlack950: Color { Color("globalBlack950", bundle: Bundle.module) }
    public var globalIce: Color { Color("globalIce", bundle: Bundle.module) }
    public var accent: Color { globalElementGreen }
    public var alert: Color { globalVermillon }
    public var primaryContent: Color { Color("primaryContent", bundle: Bundle.module) }
    public var secondaryContent: Color { Color("secondaryContent", bundle: Bundle.module) }
    public var tertiaryContent: Color { Color("tertiaryContent", bundle: Bundle.module) }
    public var quaternaryContent: Color { Color("quaternaryContent", bundle: Bundle.module) }
    public var quinaryContent: Color { Color("quinaryContent", bundle: Bundle.module) }
    public var system: Color { Color("system", bundle: Bundle.module) }
    public var background: Color { Color("background", bundle: Bundle.module) }
}

// MARK: UIKit

extension UIColor {
    /// The colors from Compound, as dynamic colors that automatically update for light and dark mode.
    public static let element = ElementUIColors()
}

@objcMembers public class ElementUIColors: NSObject {
    public var globalAzure: UIColor { UIColor(named: "globalAzure", in: Bundle.module, compatibleWith: nil)! }
    public var globalKiwi: UIColor { UIColor(named: "globalKiwi", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrape: UIColor { UIColor(named: "globalGrape", in: Bundle.module, compatibleWith: nil)! }
    public var globalVerde: UIColor { UIColor(named: "globalVerde", in: Bundle.module, compatibleWith: nil)! }
    public var globalPolly: UIColor { UIColor(named: "globalPolly", in: Bundle.module, compatibleWith: nil)! }
    public var globalMelon: UIColor { UIColor(named: "globalMelon", in: Bundle.module, compatibleWith: nil)! }
    public var globalElementGreen: UIColor { UIColor(named: "globalElementGreen", in: Bundle.module, compatibleWith: nil)! }
    public var globalWhite: UIColor { UIColor(named: "globalWhite", in: Bundle.module, compatibleWith: nil)! }
    public var globalVermillon: UIColor { UIColor(named: "globalVermillon", in: Bundle.module, compatibleWith: nil)! }
    public var globalEms: UIColor { UIColor(named: "globalEms", in: Bundle.module, compatibleWith: nil)! }
    public var globalAqua: UIColor { UIColor(named: "globalAqua", in: Bundle.module, compatibleWith: nil)! }
    public var globalPrune: UIColor { UIColor(named: "globalPrune", in: Bundle.module, compatibleWith: nil)! }
    public var globalLinks: UIColor { UIColor(named: "globalLinks", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey25: UIColor { UIColor(named: "globalGrey25", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey50: UIColor { UIColor(named: "globalGrey50", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey100: UIColor { UIColor(named: "globalGrey100", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey150: UIColor { UIColor(named: "globalGrey150", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey200: UIColor { UIColor(named: "globalGrey200", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey250: UIColor { UIColor(named: "globalGrey250", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey300: UIColor { UIColor(named: "globalGrey300", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey400: UIColor { UIColor(named: "globalGrey400", in: Bundle.module, compatibleWith: nil)! }
    public var globalGrey450: UIColor { UIColor(named: "globalGrey450", in: Bundle.module, compatibleWith: nil)! }
    public var globalBlack800: UIColor { UIColor(named: "globalBlack800", in: Bundle.module, compatibleWith: nil)! }
    public var globalBlack900: UIColor { UIColor(named: "globalBlack900", in: Bundle.module, compatibleWith: nil)! }
    public var globalBlack950: UIColor { UIColor(named: "globalBlack950", in: Bundle.module, compatibleWith: nil)! }
    public var globalIce: UIColor { UIColor(named: "globalIce", in: Bundle.module, compatibleWith: nil)! }
    public var accent: UIColor { globalElementGreen }
    public var alert: UIColor { globalVermillon }
    public var primaryContent: UIColor { UIColor(named: "primaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var secondaryContent: UIColor { UIColor(named: "secondaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var tertiaryContent: UIColor { UIColor(named: "tertiaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var quaternaryContent: UIColor { UIColor(named: "quaternaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var quinaryContent: UIColor { UIColor(named: "quinaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var system: UIColor { UIColor(named: "system", in: Bundle.module, compatibleWith: nil)! }
    public var background: UIColor { UIColor(named: "background", in: Bundle.module, compatibleWith: nil)! }
}
