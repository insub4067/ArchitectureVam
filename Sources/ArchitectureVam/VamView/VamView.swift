//
//  ArchitectureVamView.swift
//
//
//  Created by 김인섭 on 10/12/23.
//

import SwiftUI

public protocol VamView: View {
    
    associatedtype Action: Actionable
    associatedtype Model: Modelable
    
    @MainActor var action: Action { get }
    @MainActor var model: Model { get }
}
