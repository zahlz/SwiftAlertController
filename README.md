SwiftAlertController
====================

Nice and easy UIAlertController extensions

- One line setup for alert controllers
- Chainable alert controller setup
- Chainable alert actions

Installation
============
Just drop the SwiftAlertController.swift file into your project

Usage
=====

Alert
-----
```swift
// Simple alert view with an `OK` buton
UIAlertController.alert("Title") 

// Simple alert view with a additional message
UIAlertController.alert("Title", message: "Message") 

// Simple alert view with a customized action on button click
UIAlertController.alert("Title") { _ in
	print("Button clicked")
}

// Fully configurable alert view
UIAlertController.alert("Title", message: "Message", acceptMessage: "Done") { _ in
	print("Done clicked")
})

// Create a Alert with multiple buttons
UIAlertController.alert("Title")
	.action(title: "Ok") // Simple action 
	.action(title: "Do something") { _ in // Action with handler
		print("done something")
	}
	.action(title: "Destruct something", style: .destructive) { _ in // Action with handler and other style
		print("all wrecked")
	}
	.cancelable() { _ in // A Cancel button
		print("canceled")
	}

// Or use a old school array for it
UIAlertController.alert("Title", message: "Message", actions: alertAction)

// Or a closure
UIAlertController.alert("Title", message: "Message") {
	UIAlertAction(title: "Action1")
		.appending(title: "Action2")
		.appending(title: "Action3")
}

```

ActionSheet
-----------
```swift
// Initalize a simple ActionSheet
UIAlertController.sheet("Title")

// Initialize an ActionSheet with additional message
UIAlertController.sheet("Title", message: "Message")

// Initialize a action sheet with chaining
UIAlertController.sheet("Test")
	.action(title: "Ok")
	.action(title: "Do something") { _ in
		print("done something")
	}
	.action(title: "Destruct something", style: .destructive) { _ in
		print("all wrecked")
	}
	.cancelable() { _ in
		print("canceled")
	}

// Or use an UIAlertAction array (see how you can just drop the message)
UIAlertController.sheet("Title", actions: alertActions)

// Or use a closure for the initialization
UIAlertController.sheet("Title", message: "Message") {
	UIAlertAction(title: "Action1")
		.appending(title: "Action2")
		.appending(title: "Action3")
}
```


UIAlertAction
-------------
(now chainable)

```swift

// Append actions
let alertActions = UIAlertAction(title: "Action1") { _ in
	print("Action1 clicked")
}
.appending(title: "Action2") { _ in
	print("Action2 clicked")
}
.appending(title: "Action3") { _ in
	print("Action3 clicked")
}

// Initialize an UIAlertAction without the style
UIAlertAction(title: "Title") { _ in
	print("clicked")
}

```