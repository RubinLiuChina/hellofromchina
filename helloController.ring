load "helloView.ring"

import System.GUI

if IsMainSourceFile() {
	new App {
		StyleFusion()
		open_window(:helloController)
		exec()
	}
}

class helloController from windowsControllerParent

	oView = new helloView

	func hello
		msginfo("Hi","Hello, World!")
	
	func close 
		oView.win.close()
