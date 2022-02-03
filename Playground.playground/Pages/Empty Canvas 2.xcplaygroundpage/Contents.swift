import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Set canvas size
let preferredWidth = 400
let preferredHeight = 600

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Draw black background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Draw grid of circles
canvas.fillColor = .white
for ycircleOrigin in stride(from: 0, through: 400, by: 50) {
    for xcircleOrigin in stride(from: 0, through: 600, by: 50) {
        
        canvas.drawEllipse(at: Point(x: xcircleOrigin, y: ycircleOrigin), width: 50, height: 50)
        
    }
}

//Draw axes
canvas.drawAxes(withScale: true, by: 50, color: .white)

    
    


