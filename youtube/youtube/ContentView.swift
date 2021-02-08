//
//  ContentView.swift
//  youtube
//
//  Created by ADMIN on 28/01/21.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
 
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
 
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("subcription")
 
                    }
            }
 
 
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
struct Home: View {
    var body: some View {
        NavigationView{
            Kontent()
                .navigationBarItems(
                    leading: HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube_logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 20)
                        }
                    },
                    trailing:
                        HStack(spacing:20){
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "tray")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                NavigationLink(destination: SettingView()){
                                    Image("picture")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .clipShape(Circle())
                                }
                            }
                            
                            
                        }
                )
                .navigationBarTitle("",displayMode:.inline)
 
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
 
struct Kontent: View{
    var body: some View{
        List{
            
            CellKontent(imagekontent: "kokbisa_bola", profileKontent: "kok_bisa", judul: "mengapa bola bisa di tendang", deskripsi: "ini adalah deskripsi video kita 300x di tonton - 9jam yang lalu", durasi: "15:00")
            
            CellKontent(imagekontent: "kokbisa_kimia", profileKontent: "kok_bisa", judul: "Apa Itu Ilmu 'Kimia' Sebenarnya? Apa Gunanya Di Hidup Kita?", deskripsi: "ini adalah deskripsi video kita 300x di tonton - 9jam yang lalu", durasi: "03:00")
            
            CellKontent(imagekontent: "kokbisa_kesehatan", profileKontent: "kok_bisa", judul: "Apa Itu Ilmu 'Kimia' Sebenarnya? Apa Gunanya Di Hidup Kita?", deskripsi: "ini adalah deskripsi video kita 300x di tonton - 9jam yang lalu", durasi: "04:05")
            
        }
    }
}

//kompenen untuk cell
struct CellKontent: View {
    
    var imagekontent: String
    var profileKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body: some View {
        //konten 1
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(imagekontent)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Text(durasi)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing: 20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 30, height:30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                    Text(judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
            
        }
    }
}

