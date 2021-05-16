/// Copyright (c) 2021 Erica Sadun. All Rights Reserved.

import Foundation
import ArgumentParser

struct Testrepo1: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Execute the testrepo1 command",
        shouldDisplay: true)

    @Argument(help: "A name") var name = "World"

    func run() throws {
        print("Hello, \(name)!")
    }

}

Testrepo1.main()
