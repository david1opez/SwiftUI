import SwiftUI

struct ScheduleView: View {
    
    @Environment(Student.self) private var student
    @Environment(Courses.self) private var courses
    @State var showEditView: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Text("Clave")
                            .padding(.leading, 20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        Text("Nombre de la Materia")
                            .padding(.trailing, 110)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 5)
                    
                    Divider()
                        .frame(height: 1)
                    
                    List {
                        ForEach(courses.courses) { course in
                            NavigationLink(value: course) {
                                VStack {
                                    HStack {
                                        Text(course.course)
                                        Text(course.name)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                            
                        }
                    }
                    .listStyle(.inset)
                }
            }
            .navigationTitle("App 01")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(value: student) {
                        HStack {
                            VStack {
                                Spacer()
                                Text(student.name)
                                    .foregroundColor(.blue)
                            }
                            .padding(.horizontal, 5)
                            Image(systemName: "person")
                                .foregroundColor(.blue)
                        }
                    }
                    
                }
            }
            .navigationDestination(for: Student.self) { student in
                EditStudentView(student: student)
            }
            .navigationDestination(for: Course.self) { course in
                CourseDetailView(course: course)
            }
        }
    }
}

#Preview {
    ScheduleView()
        .environment(Student.defaultValue)
        .environment(Courses())
}
