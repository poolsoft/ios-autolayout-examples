//
//  Example-5-SnapshotTests.swift
//  ios-autoLayout-examples
//
//  Created by Nicholas Kuhne on 2017-04-18.
//  Copyright © 2017 TWG. All rights reserved.
//

import XCTest

class Example_5_SnapshotTests: NibLoadingSnapshotTest {
	
	override func setUp() {
		self.nibName = "example_5"
		super.setUp()
		self.recordMode = true
	}
	
	func testExample_5iPhone5 () {
		view.frame = CGRect.iPhone5Frame
		FBSnapshotVerifyView(self.view)
	}
	
	func testExample_5iPhone6 () {
		view.frame = CGRect.iPhone6Frame
		FBSnapshotVerifyView(self.view)
	}
	
	func testExample_5iPhone6Plus () {
		view.frame = CGRect.iPhone6PlusFrame
		FBSnapshotVerifyView(self.view)
	}
}
