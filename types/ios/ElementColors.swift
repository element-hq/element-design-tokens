import SwiftUI

// MARK: SwiftUI

extension Color {
    public static let element = ElementColors()
    public static let global = ElementColors.GlobalColors()
}

public struct ElementColors {
    public var accent: Color { .global.elementGreen }
    public var alert: Color { .global.vermillon }
    public var links: Color { .global.links }
    public var primaryContent: Color { Color("mobilePrimaryContent", bundle: Bundle.module) }
    public var secondaryContent: Color { Color("mobileSecondaryContent", bundle: Bundle.module) }
    public var tertiaryContent: Color { Color("mobileTertiaryContent", bundle: Bundle.module) }
    public var quaternaryContent: Color { Color("mobileQuaternaryContent", bundle: Bundle.module) }
    public var quinaryContent: Color { Color("mobileQuinaryContent", bundle: Bundle.module) }
    public var system: Color { Color("mobileSystem", bundle: Bundle.module) }
    public var background: Color { Color("mobileBackground", bundle: Bundle.module) }
    
    public let contentAndAvatars: [Color] = [
        .global.azure,
        .global.grape,
        .global.verde,
        .global.polly,
        .global.melon,
        .global.aqua,
        .global.prune,
        .global.kiwi,
    ]
    
    public struct GlobalColors {
        public var azure: Color { Color("globalAzure", bundle: Bundle.module) }
        public var kiwi: Color { Color("globalKiwi", bundle: Bundle.module) }
        public var grape: Color { Color("globalGrape", bundle: Bundle.module) }
        public var verde: Color { Color("globalVerde", bundle: Bundle.module) }
        public var polly: Color { Color("globalPolly", bundle: Bundle.module) }
        public var melon: Color { Color("globalMelon", bundle: Bundle.module) }
        public var elementGreen: Color { Color("globalElementGreen", bundle: Bundle.module) }
        public var white: Color { Color("globalWhite", bundle: Bundle.module) }
        public var vermillon: Color { Color("globalVermillon", bundle: Bundle.module) }
        public var ems: Color { Color("globalEms", bundle: Bundle.module) }
        public var aqua: Color { Color("globalAqua", bundle: Bundle.module) }
        public var prune: Color { Color("globalPrune", bundle: Bundle.module) }
        public var links: Color { Color("globalLinks", bundle: Bundle.module) }
        public var grey25: Color { Color("globalGrey25", bundle: Bundle.module) }
        public var grey50: Color { Color("globalGrey50", bundle: Bundle.module) }
        public var grey100: Color { Color("globalGrey100", bundle: Bundle.module) }
        public var grey150: Color { Color("globalGrey150", bundle: Bundle.module) }
        public var grey200: Color { Color("globalGrey200", bundle: Bundle.module) }
        public var grey250: Color { Color("globalGrey250", bundle: Bundle.module) }
        public var grey300: Color { Color("globalGrey300", bundle: Bundle.module) }
        public var grey400: Color { Color("globalGrey400", bundle: Bundle.module) }
        public var grey450: Color { Color("globalGrey450", bundle: Bundle.module) }
        public var black800: Color { Color("globalBlack800", bundle: Bundle.module) }
        public var black900: Color { Color("globalBlack900", bundle: Bundle.module) }
        public var black950: Color { Color("globalBlack950", bundle: Bundle.module) }
        public var ice: Color { Color("globalIce", bundle: Bundle.module) }
    }
}

// MARK: UIKit

extension UIColor {
    /// The colors from Compound, as dynamic colors that automatically update for light and dark mode.
    public static let element = ElementUIColors()
    public static let global = ElementUIColors.GlobalColors()
}

@objcMembers public class ElementUIColors: NSObject {
    public var accent: UIColor { .global.elementGreen }
    public var alert: UIColor { .global.vermillon }
    public var links: UIColor { .global.links }
    public var primaryContent: UIColor { UIColor(named: "mobilePrimaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var secondaryContent: UIColor { UIColor(named: "mobileSecondaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var tertiaryContent: UIColor { UIColor(named: "mobileTertiaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var quaternaryContent: UIColor { UIColor(named: "mobileQuaternaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var quinaryContent: UIColor { UIColor(named: "mobileQuinaryContent", in: Bundle.module, compatibleWith: nil)! }
    public var system: UIColor { UIColor(named: "mobileSystem", in: Bundle.module, compatibleWith: nil)! }
    public var background: UIColor { UIColor(named: "mobileBackground", in: Bundle.module, compatibleWith: nil)! }
    
    public let contentAndAvatars: [UIColor] = [
        .global.azure,
        .global.grape,
        .global.verde,
        .global.polly,
        .global.melon,
        .global.aqua,
        .global.prune,
        .global.kiwi,
    ]
    
    @objcMembers public class GlobalColors: NSObject {
        public var azure: UIColor { UIColor(named: "globalAzure", in: Bundle.module, compatibleWith: nil)! }
        public var kiwi: UIColor { UIColor(named: "globalKiwi", in: Bundle.module, compatibleWith: nil)! }
        public var grape: UIColor { UIColor(named: "globalGrape", in: Bundle.module, compatibleWith: nil)! }
        public var verde: UIColor { UIColor(named: "globalVerde", in: Bundle.module, compatibleWith: nil)! }
        public var polly: UIColor { UIColor(named: "globalPolly", in: Bundle.module, compatibleWith: nil)! }
        public var melon: UIColor { UIColor(named: "globalMelon", in: Bundle.module, compatibleWith: nil)! }
        public var elementGreen: UIColor { UIColor(named: "globalElementGreen", in: Bundle.module, compatibleWith: nil)! }
        public var white: UIColor { UIColor(named: "globalWhite", in: Bundle.module, compatibleWith: nil)! }
        public var vermillon: UIColor { UIColor(named: "globalVermillon", in: Bundle.module, compatibleWith: nil)! }
        public var ems: UIColor { UIColor(named: "globalEms", in: Bundle.module, compatibleWith: nil)! }
        public var aqua: UIColor { UIColor(named: "globalAqua", in: Bundle.module, compatibleWith: nil)! }
        public var prune: UIColor { UIColor(named: "globalPrune", in: Bundle.module, compatibleWith: nil)! }
        public var links: UIColor { UIColor(named: "globalLinks", in: Bundle.module, compatibleWith: nil)! }
        public var grey25: UIColor { UIColor(named: "globalGrey25", in: Bundle.module, compatibleWith: nil)! }
        public var grey50: UIColor { UIColor(named: "globalGrey50", in: Bundle.module, compatibleWith: nil)! }
        public var grey100: UIColor { UIColor(named: "globalGrey100", in: Bundle.module, compatibleWith: nil)! }
        public var grey150: UIColor { UIColor(named: "globalGrey150", in: Bundle.module, compatibleWith: nil)! }
        public var grey200: UIColor { UIColor(named: "globalGrey200", in: Bundle.module, compatibleWith: nil)! }
        public var grey250: UIColor { UIColor(named: "globalGrey250", in: Bundle.module, compatibleWith: nil)! }
        public var grey300: UIColor { UIColor(named: "globalGrey300", in: Bundle.module, compatibleWith: nil)! }
        public var grey400: UIColor { UIColor(named: "globalGrey400", in: Bundle.module, compatibleWith: nil)! }
        public var grey450: UIColor { UIColor(named: "globalGrey450", in: Bundle.module, compatibleWith: nil)! }
        public var black800: UIColor { UIColor(named: "globalBlack800", in: Bundle.module, compatibleWith: nil)! }
        public var black900: UIColor { UIColor(named: "globalBlack900", in: Bundle.module, compatibleWith: nil)! }
        public var black950: UIColor { UIColor(named: "globalBlack950", in: Bundle.module, compatibleWith: nil)! }
        public var ice: UIColor { UIColor(named: "globalIce", in: Bundle.module, compatibleWith: nil)! }
    }
}
