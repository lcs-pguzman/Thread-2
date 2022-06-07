//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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
let t = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 10, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code

// Show the turtle
t.drawSelf()

// Scale
let scale = 10

// Diagonal
let diagonal = Int(sqrt(2)*Double(scale))

// Make the pen thicker
t.lineWidth = 2

// Move pen to start position
t.penUp()
t.left(by: 90)
t.forward(steps: scale*5)
t.right(by: 90)
t.forward(steps: scale*2)
t.penDown()

// Eye func
func drawEye() {
    
    t.forward(steps: scale*2)
    t.right(by: 90)
    t.forward(steps: scale*2)
    t.right(by: 90)
    t.forward(steps: scale*2)
    t.right(by: 90)
    t.forward(steps: scale*2)
    t.right(by: 90)
    
}

// Draw the happy mouth (make into func)
func drawHappy() {
    
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale*4)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale*2)
    t.right(by: 90)
    t.forward(steps: scale*6)
    t.right(by: 90)
    t.forward(steps: scale*2)
    
}

// Func for happy face
func happyFace() {
    
    drawEye()
    t.penUp()
    t.forward(steps: scale*4)
    t.penDown()
    drawEye()
    t.penUp()
    t.backward(steps: scale*4)
    t.right(by: 90)
    t.forward(steps: scale*3)
    t.left(by: 90)
    t.penDown()
    drawHappy()
    
}

// Draw sad mouth (make into a func)
func drawSad() {
    
    t.forward(steps: scale*6)
    t.right(by: 90)
    t.forward(steps: scale*2)
    t.right(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale*4)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale*2)
    
}


// Func for a full sad face
func sadFace() {
    
    drawEye()
    t.penUp()
    t.forward(steps: scale*4)
    t.penDown()
    drawEye()
    t.penUp()
    t.backward(steps: scale*4)
    t.right(by: 90)
    t.forward(steps: scale*3)
    t.left(by: 90)
    t.penDown()
    drawSad()
    
    
}

// Begin drawing the pattern
for _ in 1 ... 5 {
    
    // Draw a happy face
    happyFace()
    t.drawSelf()

    // Move pen to start coding sad face
    t.right(by: 90)
    t.penUp()
    t.forward(steps: scale*8)
    t.left(by: 90)
    t.forward(steps: scale*3)
    t.right(by: 90)
    t.penDown()
    t.drawSelf()

    // Draw sad face
    t.lineWidth = 2
    sadFace()
    t.drawSelf()

    // turn pen to draw next line
    t.penUp()
    t.right(by: 90)
    t.forward(steps: scale*8)
    t.left(by: 90)
    t.forward(steps: scale*3)
    t.right(by: 90)
    t.drawSelf()
    
    t.lineWidth = 2
    
}











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
