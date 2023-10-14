//
//  ContentViewAction.swift
//
//
//  Created by 김인섭 on 10/12/23.
//
#if canImport(SwiftUI)
import ArchitectureVam

class ContentViewAction: Action<ContentViewModel> {
    
    func increaseCount() {
        model?.count += 1
    }
}
#endif
