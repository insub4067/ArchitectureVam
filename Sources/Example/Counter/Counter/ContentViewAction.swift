//
//  ContentViewAction.swift
//
//
//  Created by 김인섭 on 10/12/23.
//

import ArchitectureVam

class ContentViewAction: ArchitectureVamAction<ContentViewModel> {
    
    func didTapButton() {
        model?.count += 1
    }
}
