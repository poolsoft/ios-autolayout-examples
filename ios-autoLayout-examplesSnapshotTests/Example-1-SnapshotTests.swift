//
//  Example-1-SnapshotTests.swift
//  ios-autoLayout-examples
//
//  Created by Nicholas Kuhne on 2017-04-18.
//  Copyright © 2017 TWG. All rights reserved.
//

import XCTest

class Example_1_SnapshotTests: NibLoadingSnapshotTest {
	
	override func setUp() {
		self.nibName = "example_1"
		super.setUp()
		self.recordMode = true
	}
	
	func testExample_1iPhone5 () {
		view.frame = CGRect.iPhone5Frame
		FBSnapshotVerifyView(self.view)
	}
	
	func testExample_1iPhone6 () {
		view.frame = CGRect.iPhone6Frame
		FBSnapshotVerifyView(self.view)
	}
	
	func testExample_1iPhone6Plus () {
		view.frame = CGRect.iPhone6PlusFrame
		FBSnapshotVerifyView(self.view)
	}
}
