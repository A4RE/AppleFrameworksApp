//
//  SafariViewController.swift
//  AppleFrameworksApp
//
//  Created by Андрей Коваленко on 08.09.2023.
//

import SwiftUI
import SafariServices

struct SafariViewController: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariViewController>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariViewController>) {
        
    }
}
