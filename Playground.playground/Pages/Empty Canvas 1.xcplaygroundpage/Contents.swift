//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 480
let preferredHeight = 480
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

//Draw the grid
canvas.drawAxes(withScale: true,
                by: 20,
                color: Color.black)

//Draw bottom circle of snowman
canvas.drawShapesWithFill = true
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 250, y: 140), width: 250, height: 250)

//Draw middle circle of snowman
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 250, y: 320), width: 130, height: 130)

//Draw top circle of snowman (the head)
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 250, y: 420), width: 80, height: 80)

//Draw the left eye of the snwoman
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 230, y: 430), width: 20, height: 20)

//Draw the right eye
canvas.drawEllipse(at: Point(x: 270, y: 430), width: 20, height: 20)


canvas.highPerformance = false


/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
