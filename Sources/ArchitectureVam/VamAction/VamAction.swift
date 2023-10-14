//
//  ArchitectureVamAction.swift
//
//
//  Created by 김인섭 on 10/12/23.
//

import Foundation

@MainActor open class ArchitectureVamAction<T: ArchitectureVamModel>: ArchitectureVamActionable {
    
    public weak var model: T?
    
    public init(model: T?) {
        self.model = model
    }
}
