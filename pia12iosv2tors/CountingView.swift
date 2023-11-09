//
//  CountingView.swift
//  pia12iosv2tors
//
//  Created by BillU on 2023-11-09.
//

import SwiftUI

struct CountingView: View {
    
    @Binding var siffran : Int
    
    var body: some View {
        VStack {
            Text(String(siffran))
            
            Button(action: {
                siffran = siffran + 1
            }, label: {
                Text("PLUS")
            })
        }
        .frame(width: 100.0, height: 100.0)
        .background(Color.yellow)
    }
}

#Preview {
    CountingView(siffran: .constant(99))
}
