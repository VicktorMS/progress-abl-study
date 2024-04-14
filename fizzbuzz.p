DEFINE VARIABLE i AS INTEGER NO-UNDO.
DEFINE VARIABLE cOut AS CHARACTER NO-UNDO.

DO i = 1 TO 100:
    cOut = "".
    // Divisible by 3: Fizz
    IF i MODULO 3 = 0 THEN
        cOut = cOut + "Fizz".
        
    // Divisible by 5: Buzz    
    IF i MODULO 5 = 0 THEN
        cOut = cOut + "Buzz".   
    
    //Othewise, just print the number
    IF cOut = "" THEN
        cOut = STRING(i).    
        
    // Display output    
    DISPLAY cOut WITH FRAME x1 20 DOWN.
    //Display position down by 1 frame
    DOWN WITH FRAME x1.
END.
