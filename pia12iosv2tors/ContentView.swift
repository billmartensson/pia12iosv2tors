//
//  ContentView.swift
//  pia12iosv2tors
//
//  Created by BillU on 2023-11-09.
//

import SwiftUI



struct ContentView: View {
    
    @State var people = [Person]()

    @State var addname = ""
    @State var addlastname = ""

    @State var showcounting = true
    @State var mynumber = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                
                /*
                NavigationLink(destination: PersonDetailView(theperson: person), label: {
                    Text("Gå till person")
                })
                */
                
                HStack {
                    
                    
                    TextField("Namn...", text: $addname)
                    TextField("Efternamn...", text: $addlastname)

                    
                    
                    Button(action: {
                        let tempperson = Person(firstname: addname, lastname: addlastname)
                        people.append(tempperson)
                    }, label: {
                        Text("Lägg till")
                    })
                }

                List {
                    ForEach(people) { person in
                        
                        
                        NavigationLink(destination: PersonDetailView(theperson: person), label: {
                            PersonRowView(person: person)
                                
                        })
                        .listRowSeparator(.hidden)
                    }
                    .listRowBackground(Color.red)
                }
                .listStyle(.plain)
                
                Button(action: {
                    if showcounting == true {
                        showcounting = false
                    } else {
                        showcounting = true
                    }
                }, label: {
                    Text("Visa/dölj räkna")
                })
                
                if showcounting {
                    CountingView(siffran: $mynumber)
                    CountingView(siffran: $mynumber)
                }
            }
            .padding()
            .navigationTitle("Personer")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Stuff A") {
                    print("Stuff A")
                }
                Button("Stuff B") {
                    print("Stuff B")
                }
            }
        }
        .onAppear() {
            /*
            print("hej")
            var someone = Person(firstname: "Xerxes", lastname: "Ninjasson")
            
            print(someone.lastname)
            */
            
        }
        
    }
}

#Preview {
    ContentView()
}
