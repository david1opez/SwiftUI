//
//  EditStudentView.swift
//  app-01
//
//  Created by David Cantú Delgado on 07/08/24.
//

import SwiftUI

struct EditStudentView: View {
    
    @Bindable var student: Student
    
    var body: some View {
        VStack {
            HStack {
                Text("Editar Perfil")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.bottom, 20)
            
            HStack {
                Text("Matríula:")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
            }

            TextField("Alumno", text: $student.studentID)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            HStack {
                Text("Nombre:")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
            }

            TextField("Alumno", text: $student.name)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom, 20)
            
            HStack {
                Text("Carrera:")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
            }

            TextField("Alumno", text: $student.program)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 105)
        .ignoresSafeArea()
    }
}

#Preview {
    EditStudentView(student: Student.defaultValue)
}
