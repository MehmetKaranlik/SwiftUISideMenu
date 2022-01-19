 //
 //  NavigationBarModifier.swift
 //  SwiftUISideMenuDemoApp
 //
 //  Created by mehmet karanlık on 19.01.2022.
 //

import Foundation
import SwiftUI

struct NavigationBardModifier : ViewModifier {
 let imageName : String?
 let title : String?
 var function : () -> Void
 
 
 
 func body(content: Content) -> some View {
  content
   .navigationBarTitleDisplayMode(.inline)
   .navigationBarItems(
    leading: Button(action: {
     self.function()
    }, label: {
     Image(systemName: imageName ?? "list.bullet")
      .foregroundColor(.black)
    })
    
   )
   .navigationTitle(title ?? "Home")
 }
 
 
 
}
