//
//  ArchitectureVamView.swift
//
//
//  Created by 김인섭 on 10/12/23.
//

import SwiftUI

public protocol ArchitectureVamView: View {
    
    associatedtype Action: ArchitectureVamActionable
    associatedtype Model: ArchitectureVamModelable
    
    @MainActor var action: Action { get }
    @MainActor var model: Model { get }
}
