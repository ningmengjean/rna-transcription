//Solution goes in Sources
import Foundation

class Nucleotide {
    let inputDNA: String
    init(_ inputDNA: String) {
        self.inputDNA = inputDNA
    }
    var inputDNAArray: [String] {
        return inputDNA.characters.map {String($0)}
    }
    func complementOfDNA() throws -> String {
        var result = ""
         try inputDNAArray.forEach{
            switch $0 {
                case "G":
                    result += "C"
                case "C":
                    result += "G"
                case "T":
                    result += "A"
                case "A":
                    result += "U"
                default: throw TranscriptionError.invalidNucleotide
            }
        }
        return result
    }
    enum TranscriptionError: Error {
        case invalidNucleotide
    }
}
