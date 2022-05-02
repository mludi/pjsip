import ArgumentParser

struct Puhbaer: ParsableCommand {
    @Argument(help: "String to count the characters of") var string: String

    func run() throws {
        print(string.count)
    }
}
