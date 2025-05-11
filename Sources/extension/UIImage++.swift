//
//  UIImage++.swift
//  SparrowKit
//
//  Created by lsx on 2025/5/4.
//

import Foundation
import SwiftUI


@MainActor @available(iOS 16.0, *)

public extension View {
    
     func screenshot() -> UIImage? {
        
        let width = UIScreen.main.bounds.size.width - 40
        let height = width / 9 * 16
        let renderer = ImageRenderer(
            content:
                self
                .background(.white)
                    .frame(width: width, height: height)
//                    .clipShape(RoundedRectangle(cornerRadius: 20))
        )
        // 设置输出尺寸（可选）
    //        renderer.proposedSize = ProposedViewSize(width: 300, height: 100)
        renderer.scale = UIScreen.main.scale
        if let uiImage = renderer.uiImage {
            return uiImage
        }
        return nil
    }

}
