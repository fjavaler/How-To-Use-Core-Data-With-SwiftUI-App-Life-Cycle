import UIKit

struct InnovationIdea: Encodable {
    let title: String
    let description: String
    let isDraft: Bool
    let submittedBy: String
}

let idea = InnovationIdea(title: "Swarm Teams", description: "Allow us to form small teams to tackle problems...", isDraft: true, submittedBy: "Kathy")

let encoder = JSONEncoder()

do {
    let encodedIdea = try encoder.encode(idea)
    let jsonString = String(data: encodedIdea, encoding: .utf8)
    print(jsonString)
} catch {
    print(error)
}
