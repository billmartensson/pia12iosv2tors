//
//  PersonDetailView.swift
//  pia12iosv2tors
//
//  Created by BillU on 2023-11-09.
//

import SwiftUI

struct PersonDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var theperson : Person
    
    @State var pname = ""
    
    var body: some View {
        
        VStack {
            Text("LÄSA MER OM " + theperson.firstname)

            Text(theperson.prettyname())
            
            TextField("", text: $pname)
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Spara")
            })
            
            NavigationLink(destination: ThirdView(), label: {
                Text("Gå tredje")
            })
            
        }
        .onAppear() {
            pname = theperson.firstname
            
        }
    }
}

#Preview {
    PersonDetailView(theperson: Person(firstname: "ABC", lastname: "XYZ"))
}
