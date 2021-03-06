# Anonymous
## Grant Gualtieri and Eileen Xia
## COSC98 Hack-a-thing-1

### Description
We've made a simple version of apps like YikYak and Librex. The goal is to be able to write posts and read previously written posts, anonymously. The two main actions in our app are read and write; Write a post to submit, and Read all previously written posts.

### Who did what
* Grant - Initial app skeleton from XCode, ReadMe, Updated HomeScreen UI, Updated WriteView UI

* Eileen - HomeScreen UI, Movement between Views, and WriteView and ReadView

* Collaborations - Discussed and planned basic components and functionality of the UI together, and updated one another on progress as we pushed to git and created new components of the app

### What we learned
Both Eileen and I have never made an iOS application or coded using Swift,so this is also an introduction to the language and the X-code platform.

This was both of our first times building an app and using Swift, so this was a huge learning experience to see how Swift works and how to navigate between screens on a page. We learned a lot about how different buttons connect each view and how to transition between them. We also learned a lot about accessing global vs local variables in different structs and classes.

### What didn't work
Grant - I struggled initially trying to understand the general structure of an iOS app in Swift and had trouble deploying the app once I pulled from git, but was able to figure this out with Eileen's help and a few tutorials online.

Eileen - I struggled a lot with finding a way to keep track of all previously written posts without using an external database. The solution I came up with involved a global variable list that upon pressing submit in the WriteView, would append the post to that list to be displayed in the ReadView. Further developments to work on would be integrating an external database to handle this because something I did not have time to work on was making sure that the previous posts weren't deleted when I exit out of the app.
 
### Sources that inspired us
https://codewithchris.com/xcode-tutorial/

https://developer.apple.com/tutorials/swiftui/creating-and-combining-views

https://bryanmonsalvatge.com/posts/Adding-Items-To-a-List-In-SwiftUI/
