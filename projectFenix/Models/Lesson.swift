//
//  Lesson.swift
//  projectFenix
//
//  Created by LAUGA Aristide on 02/10/2019.
//  Copyright © 2019 Apprendre. All rights reserved.
//

import Foundation

struct Lesson {
    
    let lessonTitle: String
    let lessonSummary: String
    let lessonContent: String
    
    static var allLessons: [Lesson] = [
        Lesson(lessonTitle: "Leçon 1", lessonSummary: "Ce cours introductif permet de poser les bases de l'anglais.", lessonContent: "Contenu 1"),
        Lesson(lessonTitle: "Leçon 2", lessonSummary: "Résumé 2", lessonContent: "Contenu 2"),
        Lesson(lessonTitle: "Leçon 3", lessonSummary: "Résumé 3", lessonContent: "Contenu 3"), Lesson(lessonTitle: "Leçon 4", lessonSummary: "Résumé 4", lessonContent: "Contenu 4")]
}
