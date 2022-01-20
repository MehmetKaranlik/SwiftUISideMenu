//
//  SideMenuView.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import SwiftUI

struct SideMenuView: View {
 @Binding var isShowing : Bool
 @ObservedObject private var viewModel : SideMenuViewModel = SideMenuViewModel()
    var body: some View {
     ZStack {
      ApplicationGradients.get.redBlueGradient
      VStack {
       // Header
       SideMenuHeaderView(isShowing: $isShowing,imageUrl: nil)
        .frame(height:240)
       // Option View
       ForEach(SideMenuEnum.allCases, id: \.self) {item in
        NavigationLink {
         Text(item.title)
        } label: {
         SideMenuOptionView(sideMenuEnum: item)
        }


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
     SideMenuView(isShowing: .constant(true))
    }
}
