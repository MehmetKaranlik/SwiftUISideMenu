 //
 //  NavigationBarModifier.swift
 //  SwiftUISideMenuDemoApp
 //
 //  Created by mehmet karanlık on 19.01.2022.
 //

import Foundation
import SwiftUI

struct NavigationBarModifier : ViewModifier {
 var navigationBarHidden : Bool
 let imageName : String?
 let title : String?
 var function : () -> Void
 
 
 
 func body(content: Content) -> some View {
  content
   .navigationBarTitleDisplayMode(.inline)
   .navigationBarHidden(navigationBarHidden ? true : false)
   .navigationBarItems(
    leading: Button(action: {
     withAnimation(.spring()) {
      self.function()
     }
    }, label: {
     Image(systemName: imageName ?? "list.bullet")
      .foregroundColor(.black)
    })
    
   )
   .navigationTitle(title ?? "Home")
 }
 
 
 
}
