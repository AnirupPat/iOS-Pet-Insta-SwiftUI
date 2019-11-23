//
//  ContentView.swift
//  FBGroupsSwiftUI
//
//  Created by Anirup Patnaik on 23/11/19.
//  Copyright © 2019 Virtuelabs. All rights reserved.
//

import SwiftUI

struct  Trending: Identifiable {
    var id = UUID()
    var title, subtitle, image : String
}

struct Posts: Identifiable {
    var id = UUID()
    var title, subtitle, image, name: String
}

struct ContentView: View {
    
    let trending : [Trending] = [
        Trending(title: "OMG! So cute", subtitle: "1", image: "pup1"),
        Trending(title: "Awwsome it looks", subtitle: "2", image: "pup2"),
        Trending(title: "Lovely!", subtitle: "3", image: "pup3"),
        Trending(title: "Awwsome it looks", subtitle: "2", image: "pup4"),
        Trending(title: "I Love Pet", subtitle: "3", image: "pup5"),
        Trending(title: "Life of Pet", subtitle: "3", image: "pup6"),
        Trending(title: "Cutiiieee", subtitle: "2", image: "pup7"),
        Trending(title: "Lovely!", subtitle: "3", image: "pup8")
    ]
    
    let posts : [Posts] = [
        Posts(title: "Life would be ruff without you.The road to my heart is filled with paw prints.", subtitle: "1", image: "pup8", name: "Sharan"),
        Posts(title: "My dog's only flaw is not living forever.This friendship is fur real.", subtitle: "1", image: "pup7", name: "Rajan"),
        Posts(title: "Don't stop retrievin'.", subtitle: "1", image: "pup6", name: "Avaneesh"),
        Posts(title: "The road to my heart is filled with paw prints.", subtitle: "1", image: "pup5", name: "Anirup"),
        Posts(title: "Love is a wet nose and a wagging tail.", subtitle: "1", image: "pup4", name: "Sangram"),
        Posts(title: "This friendship is fur real.", subtitle: "1", image: "pup3", name: "Sharan"),
        Posts(title: "Life would be ruff without you.", subtitle: "1", image: "pup2", name: "Rajan"),
        Posts(title: "Life would be ruff without you.", subtitle: "1", image: "pup1", name: "Anirup"),
        Posts(title: "If there are no dogs in heaven, I don't want to go.", subtitle: "1", image: "pup10", name: "Anirup"),
        Posts(title: "This friendship is fur real.", subtitle: "1", image: "pup9", name: "Sangram")
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal) {
                    VStack {
                        HStack {
                            Spacer()
                            ForEach(trending) { trend in
                                VStack(alignment: .leading) {
                                    Image(trend.image)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(12)
                                    
                                    Text(trend.title)
                                    .frame(width: 80, height: 50)
                                    .multilineTextAlignment(.leading)
                                }
                            }
                            
                        }
                    }
                    
                    
                    
                    
                    }.frame(height: 150)
                

                ForEach(posts) { post in
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(post.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text(post.name)
                                    .font(.headline)
                                Text("posted on")
                                    .font(.body)
                            }
                        }
                        Text(post.title)
                            .frame(height: 60, alignment: .center)
                            
                            .multilineTextAlignment(.leading)
                        Image(post.image)
                        .resizable()
                        .frame( height: 180)
                        .cornerRadius(5)
                    }
                }
                
                
            }
            .navigationBarTitle(Text("Groups"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
