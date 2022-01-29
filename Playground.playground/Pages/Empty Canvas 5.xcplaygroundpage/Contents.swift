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



//Start coding
//Draw 400 by 300 cadetblue background
canvas.fillColor = Color(hue: 182, saturation: 41, brightness: 63, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 300)
//Draw 400 by 300 sandybrown
canvas.fillColor = Color(hue: 28, saturation: 61, brightness: 96, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 300), width: 400, height: 300)
//Draw vertical rectangles
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x: 50, y: 500), width: 25, height: 100)
canvas.drawRectangle(at: Point(x: 50, y: 350), width: 25, height: 125)
canvas.drawRectangle(at: Point(x: 350, y: 500), width: 25, height: 100)
canvas.drawRectangle(at: Point(x: 350, y: 350), width: 25, height: 125)
//Draw rectangle with triangles in it
//Draw the rectangle
canvas.fillColor = Color(hue: 182, saturation: 41, brightness: 63, alpha: 100)
canvas.drawRectangle(at: Point(x: 100, y: 350), width: 200, height: 125)
//Draw triangles
canvas.fillColor = Color(hue: 147, saturation: 66, brightness: 70, alpha: 100)
var verticesoftriangles: [Point] = []
verticesoftriangles.append(Point(x: 100, y: 350))
verticesoftriangles.append(Point(x: 150, y: 475))
verticesoftriangles.append(Point(x: 200, y: 350))
canvas.drawCustomShape(with: verticesoftriangles)

var verticesoftriangles1: [Point] = []
verticesoftriangles1.append(Point(x: 200, y: 350))
verticesoftriangles1.append(Point(x: 250, y: 475))
verticesoftriangles1.append(Point(x: 300, y: 350))
canvas.drawCustomShape(with: verticesoftriangles1)

//Write "Travis Scott"
canvas.drawText(message: "Travis Scott", at: Point(x: 95, y: 525), size: 21, kerning: 10)

//Come back later
//Write Nov. 6, 2021 (date of the concert)
//Write Houston, Texas
//Come back later

//Begin drawing shapes inside blue background (bottom half)
//Triangle grid (vertically standing)
canvas.fillColor = Color(hue: 147, saturation: 66, brightness: 70, alpha: 100)
for xposTriangle1 in stride(from: 0, through: 189, by: 75) {
    for yposTriangle1 in stride(from: 0, through: 200, by: 100) {
        
        var verticesofTriangle: [Point] = []
        verticesofTriangle.append(Point(x: xposTriangle1 + 0, y: yposTriangle1 + 50))
        verticesofTriangle.append(Point(x: xposTriangle1 + 25, y: yposTriangle1 + 100))
        verticesofTriangle.append(Point(x: xposTriangle1 + 50, y: yposTriangle1 + 50))
        canvas.drawCustomShape(with: verticesofTriangle)
        
    }
    
}

//Circle grid (left half)
canvas.fillColor = .white
for yposoriginCircle in stride(from: 25, through: 225, by: 100) {
    for xposoriginCircle in stride(from: 25, through: 175, by: 75) {
        
        canvas.drawEllipse(at: Point(x: xposoriginCircle, y: yposoriginCircle), width: 50, height: 50)
        
    }
}

//Draw rectangles in between the grids
canvas.fillColor = Color(hue: 28, saturation: 61, brightness: 96, alpha: 100)
canvas.drawRectangle(at: Point(x: 50, y: 0), width: 25, height: 125)
canvas.drawRectangle(at: Point(x: 125, y: 0), width: 25, height: 125)
canvas.drawRectangle(at: Point(x: 50, y: 150), width: 25, height: 150)
canvas.drawRectangle(at: Point(x: 125, y: 150), width: 25, height: 150)

//Draw horizontal triangle grid
canvas.fillColor = Color(hue: 147, saturation: 66, brightness: 70, alpha: 100)
for xposTriangle2 in stride(from: 250, through: 350, by: 100) {
    for yposTriangle2 in stride(from: 0, through: 275, by: 75) {
        
        var verticesofTriangle: [Point] = []
        verticesofTriangle.append(Point(x: xposTriangle2 + 0, y: yposTriangle2 + 25))
        verticesofTriangle.append(Point(x: xposTriangle2 + 0 , y: yposTriangle2 + 75))
        verticesofTriangle.append(Point(x: xposTriangle2 - 50, y: yposTriangle2 + 50))
        
        canvas.drawCustomShape(with: verticesofTriangle)
        
    }
}

// Draw the grid
canvas.drawAxes(withScale: true, by: 25, color: .black)


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
