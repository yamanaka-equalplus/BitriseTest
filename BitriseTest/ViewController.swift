//
//  Copyright © 2018年 Makoto Yamanaka. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
	
	@IBOutlet private weak var versionLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		versionLabel.text = "ver." + ((Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? "")
	}
}
