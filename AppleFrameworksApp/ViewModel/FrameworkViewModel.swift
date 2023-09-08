//
//  FrameworkViewModel.swift
//  AppleFrameworksApp
//
//  Created by Андрей Коваленко on 08.09.2023.
//

import Foundation

final class FrameWorkViewModel: ObservableObject {
    var selectedFramework: FrameworkModel? {
        didSet {
            isShowDetailView = true
        }
    }
    
    @Published var isShowDetailView: Bool = false
}
