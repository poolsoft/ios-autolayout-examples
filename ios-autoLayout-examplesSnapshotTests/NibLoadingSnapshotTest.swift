//
//  NibLoadingSnapshotTest.swift
//  ios-autoLayout-examples
//
//  Created by Nicholas Kuhne on 2017-04-18.
//  Copyright © 2017 TWG. All rights reserved.
//

import FBSnapshotTestCase

extension CGRect {
	public static var iPhone5Frame: CGRect {
		return CGRect.init(x: 0, y: 0, width: 320, height: 568)
	}
	
	public static var iPhone6Frame: CGRect {
		return CGRect.init(x: 0, y: 0, width: 375, height: 667)
	}
	
	public static var iPhone6PlusFrame: CGRect {
		return CGRect.init(x: 0, y: 0, width: 414, height: 736)
	}
}

class NibLoadingSnapshotTest: FBSnapshotTestCase {
	
	var nibName: String = ""
	var view: UIView!
	
	private func loadView() {
		if let views = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil) {
			if let view = views.first as? UIView {
				self.view = view
				return
			}
		}
		fatalError("No nib was found with the name \(self.nibName)")
	}
	
    override func setUp() {
        super.setUp()
		self.loadView()
    }
    
    override func tearDown() {
		self.view = nil;
        super.tearDown()
    }
}
