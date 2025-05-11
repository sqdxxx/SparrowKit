
import Foundation
import SwiftUI
import CryptoKit

public class Theme {
    public static var primaryColor = Color(hex: 0xF2895E)
    public static var textPrimary = Color(hex: 0x333333)
}

public extension Color {
    init(hex: UInt32) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }

    static var hex: Color {
        return Color(hex: UInt32(arc4random()))
    }

    static var random: Color {
        return Color(hex: UInt32(arc4random()))
    }
    
}

import SwiftUI
import CryptoKit

public extension String {
    /// 将字符串映射为稳定且可读的颜色
    func mappedColor() -> Color {
        let digest = Insecure.MD5.hash(data: self.data(using: .utf8)!)
        let bytes = Array(digest)  // ← 转换为数组后就可以下标访问了
        
        var r = Double(bytes[0]) / 255.0
        var g = Double(bytes[1]) / 255.0
        var b = Double(bytes[2]) / 255.0
        
        // 防止颜色太浅（保证文字可读性）
        let brightness = (r * 299 + g * 587 + b * 114) / 1000
        if brightness > 0.7 {
            r *= 0.6
            g *= 0.6
            b *= 0.6
        }
        
        return Color(red: r, green: g, blue: b)
    }
}

