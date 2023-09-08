//
//  MainView.swift
//  AppleFrameworksApp
//
//  Created by Андрей Коваленко on 08.09.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: FrameWorkViewModel = FrameWorkViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(FrameworkData.frameworks) { framework in
                    GridItemView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowDetailView) {
                DetailFrameworkView(framework: viewModel.selectedFramework ?? FrameworkData.dataFramework)
            }
        }
    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MainView()
        }
    }
}

struct GridItemView: View {
    
    let framework: FrameworkModel
    
    var body: some View {
        
        VStack {
            Image(framework.imgName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

