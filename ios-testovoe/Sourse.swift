//
//  Sourse.swift
//  ios-testovoe
//
//  Created by Владимир Красный on 24.05.2023.
//

struct Sourse {
    static func allPhotos() -> [Photo] {
        [
            .init(id: 1, imageName: "Anna"),
            .init(id: 1, imageName: "Alex"),
            .init(id: 1, imageName: "Lesha"),
            .init(id: 1, imageName: "Danil"),
            .init(id: 1, imageName: "Nikita"),
            .init(id: 1, imageName: "Ilya"),
            .init(id: 1, imageName: "Kristina"),
            .init(id: 1, imageName: "Kate"),
            .init(id: 1, imageName: "Liza"),
            .init(id: 1, imageName: "Alena"),
        ]
    }
    
    static func randomPhotos(witt count: Int) -> [Photo]{
        return (0..<count).map { _ in allPhotos().randomElement()!}
    }
}

struct Photo {
    let id: Int
    let imageName: String
}

struct SectionPhoto {
    let sectionName: String
    var photos: [Photo]
}
