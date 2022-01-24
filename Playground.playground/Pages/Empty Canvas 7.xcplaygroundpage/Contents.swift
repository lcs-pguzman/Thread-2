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
//Start
//Draw green background
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Draw black background below
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)



//draw the circles

for yValue in stride(from: 0, through: 400, by: 40) {
    
    for xValue in stride(from: 0,through: 400, by: 40) {
        
        if xValue + yValue == 400{
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if xValue + yValue == 360{
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if xValue + yValue == 320 {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else if xValue + yValue == 280{
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        } else {
            canvas.fillColor = .blue
        }
        //code to draw circles
        canvas.drawEllipse(at: Point(x: xValue , y: yValue), width: 35, height: 35)
    }
}

// Show a grid
canvas.lineColor = .white
canvas.drawAxes(withScale: true, by: 50, color: .white)



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
