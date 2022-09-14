const _ = require('style-dictionary/lib/utils/es6_.js')

/**
 * This custom format creates an extension of the SwiftUI Color
 * class and adds all the color tokens as static variables so that
 * you can reference a color token like: `Color.backgroundPrimary`. 
 * It will handle dark mode by using the colorsets and references.
 * 
 * @example
 * ```swift
 * Text("Hello, World!")
 *   .backgroundColor(Color.backgroundPrimary)
 *   .foregroundColor(Color.fontPrimary)
 * ```
 */
module.exports = function({ dictionary, options }) {
  let mobileColors = dictionary.allProperties.filter(token => {
    return token.attributes.type === `mobile`
  })
  
  let globalColors = dictionary.allProperties.filter(token => {
    return token.attributes.type === `global`
  })
  
  let contentAndAvatars = dictionary.tokens.color.contentAndAvatars.value
  
  return `import SwiftUI

// MARK: SwiftUI

extension Color {
    public static let global = CompoundColors.GlobalColors()
}

public struct CompoundColors {
    public init() { }
\n` +
  mobileColors.map(token => {
    let value = swiftUIColor(token, dictionary, options)
    return `    public var ${itemName(token, options)}: Color { ${value} }`
  }).join(`\n`) + `
    
    public let contentAndAvatars: [Color] = [\n` +
  contentAndAvatars.map(token => {
    return `        .global.${token.value},`
  }).join(`\n`) + `
    ]
    
    public struct GlobalColors {\n` +
  globalColors.map(token => {
    let value = swiftUIColor(token, dictionary, options)
    return `        public var ${itemName(token, options)}: Color { ${value} }`
  }).join(`\n`) + `
    }
}

// MARK: UIKit

extension UIColor {
    public static let global = CompoundUIColors.GlobalColors()
}

@objcMembers public class CompoundUIColors: NSObject {
    public override init() {
        super.init()
    }
\n` +
  mobileColors.map(token => {
    let value = uiKitColor(token, dictionary, options);
    return `    public var ${itemName(token, options)}: UIColor { ${value} }`
  }).join(`\n`) + `
    
    public let contentAndAvatars: [UIColor] = [\n` +
  contentAndAvatars.map(token => {
    return `        .global.${token.value},`
  }).join(`\n`) + `
    ]
    
    @objcMembers public class GlobalColors: NSObject {\n` +
  globalColors.map(token => {
    let value = uiKitColor(token, dictionary, options);
    return `        public var ${itemName(token, options)}: UIColor { ${value} }`
  }).join(`\n`) + `
    }
}\n`
}

/** The token's name without the category or type */
function itemName(token, options) {
  return _.camelCase( [options.prefix].concat(token.path.slice(2, token.path.length)).join(' ') )
}

/** The token's value as a Color for SwiftUI */
function swiftUIColor(token, dictionary, options) {
  // if the token does not have a reference or has a darkValue
  // use the colorset of the same name
  // else use the reference name
  if (options.outputReferences) {
    // if it has a dark value -> use the colorset (all colors with darkValue have a colorset)
    if (token.darkValue) {
      return `Color("${token.name}", bundle: Bundle.module)`;
    // if it is a reference -> refer to the Color extension name
    } else if (dictionary.usesReference(token.original.value)) {
      const reference = dictionary.getReferences(token.original.value)[0];
      return `.global.${itemName(reference, options)}`
    // default to using the colorset
    } else {
      return `Color("${token.name}", bundle: Bundle.module)`
    }
  } else {
    return `Color("${token.name}", bundle: Bundle.module)`;
  }
}

/** The token's value as a UIColor for UIKit */
function uiKitColor(token, dictionary, options) {
  // if the token does not have a reference or has a darkValue
  // use the colorset of the same name
  // else use the reference name
  if (options.outputReferences) {
    // if it has a dark value -> use the colorset (all colors with darkValue have a colorset)
    if (token.darkValue) {
      return `UIColor(named: "${token.name}", in: Bundle.module, compatibleWith: nil)!`;
    // if it is a reference -> refer to the Color extension name
    } else if (dictionary.usesReference(token.original.value)) {
      const reference = dictionary.getReferences(token.original.value)[0];
      return `.global.${itemName(reference, options)}`
    // default to using the colorset
    } else {
      return `UIColor(named: "${token.name}", in: Bundle.module, compatibleWith: nil)!`
    }
  } else {
    return `UIColor(named: "${token.name}", in: Bundle.module, compatibleWith: nil)!`;
  }
}
