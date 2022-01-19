//
//  SideMenuView.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import SwiftUI

struct SideMenuView: View {
 @ObservedObject var viewModel : SideMenuViewModel = SideMenuViewModel()
    var body: some View {
     ZStack {
      ApplicationGradients.get.redBlueGradient
      VStack {
       // Header
       SideMenuHeaderView(imageUrl: nil)
        .frame(height:240)
       // Option View
       ForEach(0..<9) {_ in
        SideMenuOptionView()
       }
       .padding(.leading)
       Spacer()

      }
      .padding()
     }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
