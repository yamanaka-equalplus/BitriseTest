//
//  Copyright © 2018年 Makoto Yamanaka. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
	
	@IBOutlet private weak var versionLabel: UILabel!
	@IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		versionLabel.text =
			"CFBundleShortVersionString: " + Bundle.infoString("CFBundleShortVersionString") + "\n" +
			"CFBundleVersion: " + Bundle.infoString("CFBundleVersion")
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		UIView.animate(withDuration: 5, animations: { [weak self] in
			self?.activityIndicator.alpha = 0
		}, completion: { [weak self] _ in
			self?.activityIndicator.stopAnimating()
		})
		//Thread.sleep(forTimeInterval: 5)
	}
}

extension Bundle {
	fileprivate static func infoString(_ key: String) -> String {
		return main.infoString(key)
	}
	fileprivate func infoString(_ key: String) -> String {
		return (infoDictionary?[key] as? String) ?? ""
	}
}
