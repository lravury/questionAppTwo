//
//  ContentView.swift
//  questionAppTwo
//
//  Created by Lauren Ravury on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("Light Orange").ignoresSafeArea()
                GeometryReader { geometry in
                    Image("vacation")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height / 2, alignment: .top)
                                    .clipped()
                            }
                VStack {
                    
                    NavigationLink(destination: ThirdView()) {
                        Text("Start")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.cyan)
                            .padding()
                            .background(
                             RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("Teal"), lineWidth: 6)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        )
                    }
                   
                }
                .padding(.top, 200)

            }
        }
    }
}

struct ThirdView: View {
    @State var houseEmoji = ""
    var body: some View {
        ZStack{
            Color("Light Orange").ignoresSafeArea()
            VStack {
                Text("Do you prefer to spend time inside or outside?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                HStack{
                    Button(action: {
                        houseEmoji = "🏠"
                    }) {
                        Text("Inside")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Teal"))                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                    Button(action: {
                        houseEmoji = "🏞"
                    }) {
                        Text("Outside")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Teal"))
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                }
                NavigationLink(destination: FourthView()) {
                    Text("Continue")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.cyan)
                        .padding()
                        .background(
                         RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Teal"), lineWidth: 6)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    )
                }
                Text(houseEmoji)
                    .font(.system(size: 40))
                    .padding(.top, 20)
            }
        }
    }
}

struct FourthView: View {
    @State var type = ""
    var body: some View {
        ZStack{
            Color("Light Orange").ignoresSafeArea()
            VStack {
                Text("What type of climate do you prefer best to relax?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                HStack{
                    Button(action: {
                        type = "☀️"
                    }) {
                        Text("Warm Weather")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Teal"))
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                    Button(action: {
                        type = "❄️"
                    }) {
                        Text("Cold Weather")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Teal"))
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                }
                NavigationLink(destination: FifthView()) {
                    Text("Continue")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.cyan)
                        .padding()
                        .background(
                         RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Teal"), lineWidth: 6)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
                    )
                }
                Text(type)
                    .font(.system(size: 40))
                    .padding(.top, 20)
            }
        }
    }
}
 
struct FifthView: View {
    @State var travelEmoji = ""
    var body: some View {
        ZStack{
            Color("Light Orange").ignoresSafeArea()
            VStack {
                Text("Do you prefer to travel in the US or outside of the country?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            HStack{
                    Button(action: {
                        travelEmoji = "🇺🇸"
                    }) {
                        Text("Inside the US")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color ("Teal"))
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                    Button(action: {
                        travelEmoji = "✈️"
                    }) {
                        Text("Other Country")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.orange)
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("Teal"))
                            )
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
            }
            Text(travelEmoji)
                .font(.system(size: 40))
                .padding(.top, 20)
                }
                
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}

