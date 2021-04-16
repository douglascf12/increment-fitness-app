//
//  RemindView.swift
//  Increment
//
//  Created by Douglas Cardoso Ferreira on 16/04/21.
//

import SwiftUI

struct RemindView: View {
    var body: some View {
        VStack {
            Spacer()
            DropdownView()
            Spacer()
            Button(action: {}) {
                Text("Create")
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(.primary)
            }.padding(.bottom, 15)
            Button(action: {}) {
                Text("Skip")
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(.primary)
            }
        }.navigationTitle("Remind")
        .padding(.bottom, 15)
    }
}


struct RemindView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RemindView()
        }
    }
}
