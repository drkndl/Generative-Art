def setup():
    
    size(500, 500)      # Defining a window size of width and height 500 px
    stroke(0)           # Defining the stroke colour be black
    strokeWeight(4)     # Defining the width of the stroke to be 4 px
    frameRate(1)        # Defining the frame rate to be 1
    
def draw():
    
    background(255)                            # Defining a white background afresh every frame
    step = 30                                  # Defining a step size for the tiling process
    
    for i in range(0, width, step):
        for j in range(0, height, step):
            
            leftToRight = random(1)            # Randomly choosing a float value between 0 (included) and 1 (excluded)
    
            if leftToRight >= 0.5:             # Deciding whether the line is to be drawn from left-to-right or right-to-left based on the random value
                line(i, j, i+step, j+step)     # Drawing a line of width and height = step from top left to bottom right
            else:
                line(i+step, j, i, j+step)     # Drawing a line of width and height = step from top right to bottom left
                
    saveFrame("TiledLines.png")                # Saving the last frame
        
