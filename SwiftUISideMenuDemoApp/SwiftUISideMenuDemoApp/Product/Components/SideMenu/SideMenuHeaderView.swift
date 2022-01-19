 //
 //  SideMenuHeaderView.swift
 //  SwiftUISideMenuDemoApp
 //
 //  Created by mehmet karanlık on 19.01.2022.
 //

import SwiftUI

struct SideMenuHeaderView: View {
 let imageUrl : String?

 var body: some View {
  VStack(alignment: .leading, spacing: 3) {
   buildCircleAvatar()
   buildUserCredentails()
   buildFollowerInfo()
   Spacer()
  }
  .foregroundColor(.white)

 }

 fileprivate func buildFollowerInfo() -> some View {
  return HStack {
   Text("1,254").bold()
   Text("Following")
   DynamicHorizontalSpacer(size: 10)
   Text("1,254").bold()
   Text("Following")
   Spacer()
  }
 }

 fileprivate func buildUserCredentails() -> some View {
  return VStack(alignment:.leading, spacing: 3) {
   Text("Eddie Brock")
    .font(.system(size: 24,weight: .semibold))
   Text("@Venom")
    .font(.system(size: 14))
  }
  .padding(.bottom)
 }


 fileprivate func buildCircleAvatar() -> some View {
  return ZStack {
   Circle()
    .stroke()
    .frame(width: 60, height: 60, alignment: .center)
   AsyncImage(url: URL(string: imageUrl ?? "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50") ,scale: 1.4)
    .clipShape(Circle())

  }
 }

}

struct SideMenuHeaderView_Previews: PreviewProvider {
 static var previews: some View {
  SideMenuHeaderView(imageUrl: nil)
   .previewLayout(.sizeThatFits)


 }
}
