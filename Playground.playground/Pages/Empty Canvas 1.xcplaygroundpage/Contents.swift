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

//Draw the grid
canvas.drawAxes(withScale: true,
                by: 20,
                color: Color.black)

//Draw background for snowman
canvas.drawShapesWithFill = true
canvas.fillColor = .blue
canvas.drawEllipse(at: Point(x: 250,
                             y: 250),
                   width: 1000, height: 1000)

//Draw bottom circle of snowman
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 250, y: 140),
                   width: 250, height: 250)

//Draw middle circle of snowman
canvas.drawEllipse(at: Point(x: 250, y: 320),
                   width: 130, height: 130)

//Draw top circle of snowman (the head)
canvas.drawEllipse(at: Point(x: 250, y: 420),
                   width: 80, height: 80)

//Draw the left eye of the snwoman
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 230, y: 430),
                   width: 20, height: 20)

//Draw the right eye
canvas.drawEllipse(at: Point(x: 270, y: 430),
                   width: 20, height: 20)

//Draw nose
//Say the vertices of the nose shape
canvas.fillColor = .orange
var verticesOfSomeShape: [Point] = []
verticesOfSomeShape.append(Point(x: 250, y: 420))
verticesOfSomeShape.append(Point(x: 240, y: 410))
verticesOfSomeShape.append(Point(x: 250, y: 410))
//Draw the custom nose shape
canvas.drawCustomShape(with: verticesOfSomeShape)

//Draw the mouth
canvas.drawCurve(from: Point(x: 230, y: 400),
                 to: Point(x: 270, y: 400),
                 control1: Point(x: 230, y: 380),
                 control2: Point(x: 270, y: 380 ))

//Draw the left arm
canvas.drawLine(from: Point(x: 185, y: 320), to: Point(x: 140, y: 320))

//Draw the 3 fingers of the left arm
canvas.drawLine(from: Point(x: 140, y: 320),
                to: Point(x: 120, y: 340))

canvas.drawLine(from: Point(x: 140, y: 320),
                to: Point(x: 120, y: 320))

canvas.drawLine(from: Point(x: 140, y: 320),
                to: Point(x: 120, y: 300))

//Draw the right arm
canvas.drawLine(from: Point(x: 315, y: 320),
                to: Point(x: 360, y: 320))

//Draw the 3 fingers of the right arm
canvas.drawLine(from: Point(x: 360, y: 320),
                to: Point(x: 380, y: 340))

canvas.drawLine(from: Point(x: 360, y: 320),
                to: Point(x: 380, y: 320))

canvas.drawLine(from: Point(x: 360, y: 320),
                to: Point(x: 380, y: 300))

//Draw the buttons on the middle circle
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 250, y: 360),
                   width: 20, height: 20)

canvas.drawEllipse(at: Point(x: 250, y: 325),
                   width: 20, height: 20)

canvas.drawEllipse(at: Point(x: 250, y: 285),
                   width: 20, height: 20)

canvas.highPerformance = true

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
