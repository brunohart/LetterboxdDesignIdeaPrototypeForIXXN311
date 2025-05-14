//
//  InvitesView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 10/05/2025.
//

import SwiftUI
import EventKit

func addEventToCalendar() {
    let eventStore = EKEventStore()
    
    eventStore.requestFullAccessToEvents { granted, error in
        if granted && error == nil {
            let event = EKEvent(eventStore: eventStore)
            event.title = "Fallen Angels Screening"
            event.startDate = Date() // Replace with actual date
            event.endDate = event.startDate.addingTimeInterval(2 * 60 * 60) // 2-hour duration
            event.notes = "An invite-only screening at 8 Cinephile Lane"
            event.calendar = eventStore.defaultCalendarForNewEvents
            
            do {
                try eventStore.save(event, span: .thisEvent)
                print("Event added to calendar.")
            } catch {
                print("Error saving event: \(error)")
            }
        } else {
            print("Access denied or error: \(String(describing: error))")
        }
    }
}



struct InvitesView: View {
  var body: some View {
    ZStack() {
        //background card
        Rectangle()
              .fill(Color(red: 245 / 255, green: 232 / 255, blue: 207 / 255))
                .frame(width: 374, height: 744)
              .frame(width: 374, height: 744)
              .cornerRadius(24);
        
        //image of poster
        Image("FallenAngelsPoster")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 108, height: 153)
          .clipped()
          .offset(x: -120, y: -270)
        
        Text("Fallen Angels 1995  墮落天使 \nDirected by Wong Kar-wai")
              .font(Font.custom("SF Pro Text", size: 14).weight(.semibold))
              .foregroundColor(.black)
              .multilineTextAlignment(.leading)
              .offset(x: 40, y: -330)
        
        Text("An assassin goes through obstacles as he attempts to escape his violent lifestyle despite the opposition of his partner, who is secretly attracted to him.")
            .font(Font.custom("Noto Serif", size: 12).weight(.medium))
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .padding(.trailing)
            .offset(x: 48, y: -260)
            .frame(width: 200, height: 100)
        
        Image("FlynnSlickerProfile")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40, height: 40)
            .clipShape(Ellipse())
            .offset(x: 155 , y:-330)
        

        
        
        
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 360, height: 16)
                .background(.white)
    
        
        Rectangle()
              .foregroundColor(.clear)
              .frame(width: 341, height: 10)
              .background(Color(red: 0.78, green: 0.78, blue: 0.78));
        
        Rectangle()
             .foregroundColor(.clear)
             .frame(width: 131, height: 10)
             .background(.black);
        }.offset(x: 0 , y: -180)
        
        
      Group {
        ZStack {
          Ellipse()
            .fill(Color(red: 0.20, green: 0.32, blue: 0.64))
            .frame(width: 59.39, height: 59.39)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 38.02, y: -135.82)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.20, green: 0.32, blue: 0.64))
            .frame(width: 62.26, height: 61.30)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 118.36, y: -134.86)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.20, green: 0.32, blue: 0.64))
            .frame(width: 60.35, height: 61.30)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.40, y: 44.95)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.03, y: 44.75)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.30, y: 44.49)
      
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.12, y: -45.15)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.66, y: -44.97)
       
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.12, y: -135.06)
      };Group {
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.40, y: -134.88)
       
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.03, y: -45.15)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.44, y: -44.44)
       
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.03, y: -135.06)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.30, y: -134.35)
        
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 39.74, y: 43.23)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 39.47, y: 42.88)
      };Group {
       
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 118.65, y: 45.15)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 118.24, y: 44.89)
       
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 118.65, y: -44.76)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 118.11, y: -44.04)
        
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.03, y: 134.66)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -119.57, y: 134.31)
       
      };Group {
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 38.78, y: -46.67)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: 38.38, y: -46.49)
    
        ZStack {
          Ellipse()
            .fill(Color(red: 0.92, green: 0.40, blue: 0.21))
            .frame(width: 60.91, height: 60.91)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.12, y: 135.06)
        ZStack {
          Ellipse()
            .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
            .frame(width: 51.32, height: 51.32)
          Image(systemName: "person.fill")
            .foregroundColor(.white)
            .font(.system(size: 24))
        }
        .offset(x: -40.53, y: 134.70)
      }
        
        
       Rectangle()
            .frame(width: 360, height: 2)
            .offset(x:0 , y: 180)
        
        Rectangle()
            .fill(Color(red: 0.20, green: 0.32, blue: 0.64))
            .frame(width:180, height: 40)
            .offset(x: -97, y: 220)
        

        
        Text("8 Cinephile Lane, BH")
            .foregroundColor(.white)
            .offset(x:-100, y: 220)
        
        Rectangle()
            .fill(Color(red: 0.20, green: 0.32, blue: 0.64))
            .frame(width:180, height: 40)
            .offset(x: 97, y: 220)

        Text("Starts at 6pm")
            .foregroundColor(.white)
            .offset(x:100, y: 220)
        
        
        
      HStack(spacing: 12) {
        Button(action: {
          addEventToCalendar()
        }) {
          Label("Add to Calendar", systemImage: "calendar.badge.plus")
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.white)
            .padding()
            .frame(width: 170, height: 40)
            .background(Color.orange)
            .cornerRadius(8)
        }

        Button(action: {
          // Add to Wallet logic will go here
        }) {
          Label("Add to Wallet", systemImage: "wallet.pass")
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.white)
            .padding()
            .frame(width: 170, height: 40)
            .background(Color.orange)
            .cornerRadius(8)
        }
      }
      .offset(y: 320)
    }
    .frame(width: 298.98, height: 331.02);
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    InvitesView()
  }
}
