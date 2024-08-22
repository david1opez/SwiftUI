//
//  CourseScheduleView.swift
//  app-01
//
//  Created by David Cantú Delgado on 19/08/24.
//

import SwiftUI

struct CourseScheduleView: View {
    
    @State var days: [Days] = []
    @State var startTime: Date = Date.now
    @State var duration: Int = 2
    @State var durationFloat: Float = 2.0
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Days.allCases, id: \.self) { day in
                    Text(day.shortName)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .foregroundColor(days.contains(day) ? Color.white : Color.black)
                        .background(days.contains(day) ? Color.blue.cornerRadius(7) : Color(red: 0.91, green: 0.91, blue: 0.91).cornerRadius(7))
                        .onTapGesture {
                            print(day.name)
                            if (days.contains(day)) {
                                days.removeAll(where: { $0 == day })
                            } else {
                                days.append(day)
                            }
                            print(days)
                        }
                    
                }
                
            }
            DatePicker("Hora de inicio", selection: $startTime, displayedComponents: .hourAndMinute)
                .padding()
                .labelsHidden()
                .datePickerStyle(.compact)
            
            Stepper("Número de horas: \(duration)", value: $duration, in: 2...4, step: 2)
                .padding()
            
        }
    }
}

#Preview {
    CourseScheduleView()
}
