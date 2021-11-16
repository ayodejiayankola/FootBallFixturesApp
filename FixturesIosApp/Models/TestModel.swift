//
//import RealmSwift
//
//
//
//class Book: Object, Codable {
//    @objc dynamic var name: String = ""
//    @objc dynamic var author: String = ""
//    var tags = List<Tag>()
//
//    required convenience init(from decoder: Decoder) throws {
//        self.init()
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//        author = try container.decode(String.self, forKey: .author)
//        tags = try container.decode(List<Tag>.self, forKey: .tags)   // this is problem.
//    }
//}
//
//class Tag: Object, Codable {
//    @objc dynamic var string: String = ""
//
//    required convenience init(from decoder: Decoder) throws {
//        self.init()
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        string = try container.decode(String.self, forKey: .string)
//    }
//}
//
//
//extension List : Decodable where Element : Decodable {
//    public convenience init(from decoder: Decoder) throws {
//        self.init()
//        var container = try decoder.unkeyedContainer()
//        while !container.isAtEnd {
//            let element = try container.decode(Element.self)
//            self.append(element)
//        }
//    } }
//
//extension List : Encodable where Element : Encodable {
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.unkeyedContainer()
//        for element in self {
//            try element.encode(to: container.superEncoder())
//        }
//    } }
