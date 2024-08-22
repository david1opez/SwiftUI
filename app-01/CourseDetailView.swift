//
//  CourseDetailView.swift
//  app-01
//
//  Created by David Cantú Delgado on 13/08/24.
//

import SwiftUI

struct CourseDetailView: View {
    
    @Environment(Courses.self) private var courses
    @Environment(\.dismiss) private var dismiss
    @State var course: Course
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Detalles del Curso")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.bottom, 20)
            
            HStack {
                Text("Clave:")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            TextField("Clave", text: $course.course)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            HStack {
                Text("Nombre de la Materia:")
                    .foregroundColor(.blue)
                Spacer()
            }

            TextField("Nombre de la Materia", text: $course.name)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            HStack {
                Text("Fecha de inicio:")
                    .foregroundColor(.blue)
                Spacer()
            }
            
            HStack {
                DatePicker(
                    "Fecha de inicio",
                    selection: $course.startDate,
                    displayedComponents: .date
                )
                .labelsHidden()
                Spacer()
            }
            
            Spacer()
            
            Button {}
            label: {
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(Color.white)
                    Text("Ver Horario")
                    
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            Button {
                if let index = courses.courses.firstIndex(where: { $0.id == course.id }) {
                    print("Hola \(index)")
                    courses.courses[index].course = course.course
                    print(course.course)
                    print(courses.courses[index].course)
                }
                dismiss()
            } label: {
                Text("Guardar")
            }
            .padding(.bottom, 70)
        }
        .padding(.horizontal, 20)
        .padding(.top, 105)
        .ignoresSafeArea()
        
        
    }
    
    func saveCourse() {
        
    }
}

#Preview {
    CourseDetailView(course: Course.defaultValue)
        .environment(Courses())
}
