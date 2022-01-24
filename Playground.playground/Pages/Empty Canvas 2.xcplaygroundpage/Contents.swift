import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Set canvas size
let preferredWidth = 400
let preferredHeight = 400

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Draw the grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//Loop to express pattern to go up by 50
for someValue in stride(from: 0,
                        through: 400,
                        by: 50){
    someValue
    //Draw line from and to points in plan
    canvas.drawLine(from: Point(x: someValue, y: 0), to: Point(x: 400, y: someValue))
    }

//Draw same pattern but in the top left
canvas.lineColor = .red
for someValue in stride(from: 400,
                        through: 0,
                        by: -50) {
   someValue
    //Draw lines in top left
    canvas.drawLine(from: Point(x: someValue, y: 400), to: Point(x: 0, y: someValue))
    
    
}

