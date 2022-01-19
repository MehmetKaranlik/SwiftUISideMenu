  //
  //  ContentView.swift
  //  SwiftUISideMenuDemoApp
  //
  //  Created by mehmet karanlık on 19.01.2022.
  //

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    NavigationView {
      ZStack {
        Color.white
        Text("Hello, world!")
          .padding()
        
        
      }
      .modifier(
        NavigationBardModifier(imageName: nil, title: nil, function: {print("123")}
                              )
      )
      
      
    }
    
  }
  
}




struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


