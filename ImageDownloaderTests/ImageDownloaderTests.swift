//
//  ImageDownloaderTests.swift
//  ImageDownloaderTests
//
//  Created by haoshuai on 2020/3/14.
//  Copyright © 2020 haoshuai. All rights reserved.
//

import XCTest
@testable import ImageDownloader

struct ImageLoader {
    static let sampleImageURLs: [URL] = {
        let prefix = "https://raw.githubusercontent.com/onevcat/Kingfisher-TestImages/master/DemoAppImage/Loading"
        return (1...10).map { URL(string: "\(prefix)/kingfisher-\($0).jpg")! }
    }()

    static let highResolutionImageURLs: [URL] = {
        let prefix = "https://raw.githubusercontent.com/onevcat/Kingfisher-TestImages/master/DemoAppImage/HighResolution"
        return (1...20).map { URL(string: "\(prefix)/\($0).jpg")! }
    }()
    
    static let gifImageURLs: [URL] = {
        let prefix = "https://raw.githubusercontent.com/onevcat/Kingfisher-TestImages/master/DemoAppImage/GIF"
        return (1...3).map { URL(string: "\(prefix)/\($0).gif")! }
    }()

    static let progressiveImageURL: URL = {
        let prefix = "https://raw.githubusercontent.com/onevcat/Kingfisher-TestImages/master/DemoAppImage/Progressive"
        return URL(string: "\(prefix)/progressive.jpg")!
    }()
}

class ImageDownloaderTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let urls =  ImageLoader.sampleImageURLs
        ImageDownloader.default.downloadImage(urls: urls)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            debugPrint("完成")
        }
    }

}
