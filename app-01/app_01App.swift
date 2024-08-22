import SwiftUI

@main
struct app_01App: App {
    
    @State var student: Student = Student.defaultValue
    @State var courses: Courses = Courses()
    
    var body: some Scene {
        WindowGroup {
            ScheduleView()
                .environment(student)
                .environment(courses)
        }
    }
}
