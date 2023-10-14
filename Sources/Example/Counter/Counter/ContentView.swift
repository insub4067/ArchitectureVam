//
//  ContentView.swift
//  Counter
//
//  Created by 김인섭 on 10/12/23.
//
#if canImport(SwiftUI)
import SwiftUI
import ArchitectureVam

struct ContentView: VamView {
    
    typealias Action = ContentViewAction
    typealias Model = ContentViewModel
    
    let action: ContentViewAction
    @StateObject var model: ContentViewModel
    
    var body: some View {
        VStack {
            Text("\(model.count)")
            Button("Tap to increase count") {
                action.increaseCount()
            }
        }
    }
    
    static func build() -> ContentView {
        let model = ContentViewModel()
        let action = ContentViewAction(model: model)
        return .init(action: action, model: model)
    }
}
#endif
