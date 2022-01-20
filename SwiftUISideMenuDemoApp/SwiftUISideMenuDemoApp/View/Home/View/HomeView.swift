 //
 //  ContentView.swift
 //  SwiftUISideMenuDemoApp
 //
 //  Created by mehmet karanlık on 19.01.2022.
 //

import SwiftUI

struct HomeView: View {
 @ObservedObject fileprivate var viewModel: HomeViewModel = HomeViewModel()

 var body: some View {
  NavigationView {
   ZStack {
    if viewModel.isSideMenuShown {
     SideMenuView(isShowing: $viewModel.isSideMenuShown)
    }
    HomeViewBody(viewModel: viewModel)
     .cornerRadius(viewModel.isSideMenuShown ? 20 : 10)
     .scaleEffect(viewModel.isSideMenuShown ? 0.8 : 1)
     .offset(x: viewModel.isSideMenuShown ? 250 : 0, y:viewModel.isSideMenuShown ? 30 : 0)

   }
  }
 }
}




struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  HomeView()
 }
}



struct HomeViewBody: View {
 @ObservedObject var viewModel : HomeViewModel
 var body: some View {
  ZStack {
   Color.white
   Text("Hello, world!")
    .padding()

  }
  .modifier(
   NavigationBarModifier(navigationBarHidden: viewModel.isSideMenuShown, imageName: nil, title: nil, function: {viewModel.isSideMenuShown.toggle()} )
  )
 }
}
