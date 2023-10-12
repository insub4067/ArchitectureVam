//
//  ContentViewAction.swift
//
//
//  Created by 김인섭 on 10/12/23.
//

import Vam

class ContentViewAction: VamAction<ContentViewModel> {
    
    func didTapButton() {
        model?.count += 1
    }
}
