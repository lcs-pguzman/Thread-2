//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing code

//draw the background
canvas.fillColor = Color(hue: 193, saturation: 99, brightness: 86, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//draw the white circles
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true

//customize the borders
canvas.borderColor = .white
canvas.defaultBorderWidth = 12

//draw the circles
for whiteCircle in stride(from: 0, through: 400, by: 50){
    
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: whiteCircle, height: whiteCircle)
}

//draw the pink circle
//change the border color
canvas.borderColor = Color(hue: 312, saturation: 63, brightness: 66, alpha: 100)

//draw the circles
for pinkCircle in stride(from: 0, through: 400, by: 50){
    
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: pinkCircle, height: pinkCircle)
}

//draw the superdrag
canvas.drawText(message: "superdrag", at: Point(x: 25, y: 90))

canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
