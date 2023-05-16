//
//  ToastView.swift
//  Toast
//
//  Created by iOS on 2023/5/4.
//

import SwiftUI

public struct ToastView<Content: View>: View {
    
    public init(isActive: Binding<Bool>,
                padding: CGFloat = 10,
                defaultOffset: CGFloat = 0,
                edge: Edge = .top,
                @ViewBuilder content: @escaping ContentBuilder) {
        _isActive = isActive
        self.padding = padding
        self.defaultOffset = defaultOffset
        self.content = content
        self.edge = edge
    }
    
    public typealias ContentBuilder = (_ isActive: Bool) -> Content
    private let content: ContentBuilder
    private let defaultOffset: CGFloat
    private let padding: CGFloat
    private let edge: Edge
    @Binding private var isActive: Bool
    
    public var body: some View {
        content(isActive)
            .animation(.spring())
            .offset(y: offset)
            .transition(.move(edge: edge))
            .padding(.vertical, padding)
            .opacity(!isActive ? 0 : 1)
    }
}

private extension ToastView {
    
    var offset: CGFloat {
        if isActive { return 0 }
        return defaultOffset
    }
    
    func dismiss() {
        isActive = false
    }
}
