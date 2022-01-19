//
//  DynamicSpacer.swift
//  SwiftUISideMenuDemoApp
//
//  Created by mehmet karanlık on 19.01.2022.
//

import SwiftUI

struct DynamicVerticalSpacer: View {
 let size : CGFloat?
    var body: some View {
        Spacer()
      .frame(width: 0, height: size ?? 20, alignment: .center)
    }
}

struct DynamicSpacer_Previews: PreviewProvider {
    static var previews: some View {
        DynamicVerticalSpacer(size: nil)
    }
}
