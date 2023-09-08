//
//  DetailFrameworkView.swift
//  AppleFrameworksApp
//
//  Created by Андрей Коваленко on 08.09.2023.
//

import SwiftUI

struct DetailFrameworkView: View {
    
    @Environment(\.presentationMode) var presentMode
    @State private var isShowSafari: Bool = false
    
    var framework: FrameworkModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .onTapGesture {
                        presentMode.wrappedValue.dismiss()
                    }
            }
            .padding(.horizontal, 8)
            GridItemView(framework: framework)
            Spacer()
            Text(framework.description)
                .font(.body)
            Spacer()
            Spacer()
            Button {
                isShowSafari = true
            } label: {
                ButtonFramefork(title: "Learn More")

            }

        }
        .padding()
        .fullScreenCover(isPresented: $isShowSafari) {
            SafariViewController(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

struct DetailFrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFrameworkView(framework: FrameworkData.dataFramework)
    }
}

struct ButtonFramefork: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(10)
    }
}
