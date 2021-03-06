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
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

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

// Begin
//background
canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//draw triangles
canvas.fillColor = .yellow

for xValue in stride(from: 0, through: 400, by: 40) {
    for yValue in stride(from: 200, through: 600, by: 40) {
        
        var verticesOfSomeShape: [Point] = []
        verticesOfSomeShape.append(Point(x: xValue + 0, y: yValue + 0))
        verticesOfSomeShape.append(Point(x: xValue + 40, y: yValue + 40))
        verticesOfSomeShape.append(Point(x: xValue + 40, y: yValue + 0))
        canvas.drawCustomShape(with: verticesOfSomeShape)
        
        if yValue <= xValue + 160 {
            canvas.fillColor = .yellow
        } else if yValue >= 600 {
            canvas.fillColor = .yellow
        } else {
            canvas.fillColor = .white
        }
        canvas.drawText(message: "\(xValue), \n\(yValue - 200))",at: Point(x: xValue, y: yValue - 10),size: 8)
    }
}

//draw text
canvas.drawText(message: "talking heads", at: Point(x: 25, y: 140), size: 30, kerning: 0)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */



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
