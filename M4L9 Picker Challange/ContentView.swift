//
//  ContentView.swift
//  M4L9 Picker Challange
//
//  Created by David May on 12/8/22.
//

import SwiftUI

struct ContentView: View {
//    Build an app that lets users order a meal from your new restaurant, “Ottimo Ristorante”! The UI should have
//



//    For an extra challenge, try using SwiftUI’s DatePicker view instead!
   
    @State  var locationIndex = 4
    @State var menuIndex = 4
    @State var pickupIndex = 6
    
    
    var body: some View {
     
        VStack (alignment: .center, spacing: 0) {
            
            Text("Ottimo Ristorante")
                
                
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 60)
            
            //    A menu picker that lets the user select one of Ottimo Ristorante’s many locations
            
            HStack (alignment: .top){
                
                Text("Location:")
                    .padding(.top, 6)
                   // .padding(.bottom, 10)
          
                Picker("Location:", selection: $locationIndex) {
                    
                    Text("London").tag(1)
                    Text("Paris").tag(2)
                    Text("Dubai").tag(3)
                    Text("New York").tag(4)
                    Text("Denver").tag(5)
                    Text("Los Angelos").tag(6)
                    Text("Tokoyo").tag(7)
                    Text("Shanghi").tag(8)
                    Text("Kalkutta").tag(9)
                    
                        .pickerStyle(NavigationLinkPickerStyle())
                }
            }
            
            
            Spacer()
  
            //    A wheel picker that lets the user choose what they want to eat

            
            Picker("Menu Item", selection: $menuIndex) {
                
                Text("Spaghetti").tag(1)
                Text("Lasagna").tag(2)
                Text("Fettechini").tag(3)
                Text("Mushroom Ravioli").tag(4)
                Text("Eggplant Parmeson").tag(5)
                Text("Fried Ice Cream").tag(6)
                Text("Riggotoni").tag(7)
                Text("Linguini").tag(8)
                Text("Sausage Ziti").tag(9)
                
                
                
                
                }
                .pickerStyle(WheelPickerStyle())
                .padding(.bottom, 10)
        
              
            Spacer()
            
            //    A segmented picker that lets the user select what time they will pick up their order
            
            Picker("PickUp Time", selection: $pickupIndex) {
                    Text("5 pm").tag(5)
                    Text("6 pm").tag(6)
                    Text("7 pm").tag(7)
                    Text("8 pm").tag(8)
                    Text("9 pm").tag(9)
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.bottom, 20)
           
            Spacer()
 
            //    A button that says “Pick for me!”. When the button is tapped, the app should randomly select a location, meal and time for the user
            
            Button("Pick for me!") {
                locationIndex = Int.random(in: 1...9)
                menuIndex = Int.random(in: 1...9)
                pickupIndex = Int.random(in: 5...9)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
