//
//  SideMenuOptionView.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import SwiftUI

struct SideMenuOptionView: View {
 let sideMenuEnum : SideMenuEnum
    var body: some View {
     HStack {
      Image(systemName: sideMenuEnum.imageName)
       .frame(width: 24, height: 24, alignment: .center)
      DynamicHorizontalSpacer(size: 10)
      Text(sideMenuEnum.title).bold()
      Spacer()
     }
     .foregroundColor(.white)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
     SideMenuOptionView(sideMenuEnum: .messages)
    }
}
