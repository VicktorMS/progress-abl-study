/*Inicializando variaveis*/
DEFINE VARIABLE num1 AS DECIMAL NO-UNDO.
DEFINE VARIABLE num2 AS DECIMAL NO-UNDO.
DEFINE VARIABLE result_ AS DECIMAL NO-UNDO.
DEFINE VARIABLE operation AS CHARACTER NO-UNDO. 


/*Configurando fun��es de oper��es*/
FUNCTION addition RETURNS DECIMAL (INPUT num1 AS DECIMAL, INPUT num2 AS DECIMAL):
    RETURN num1 + num2.
END FUNCTION.    
                                                                     
FUNCTION subtraction RETURN DECIMAL (INPUT num1 AS DECIMAL, INPUT num2 AS DECIMAL):
    RETURN num1 + num2.
END FUNCTION.

FUNCTION multiplication RETURN DECIMAL (INPUT num1 AS DECIMAL, INPUT num2 AS DECIMAL):
    RETURN num1 * num2.
END FUNCTION.

FUNCTION division RETURN DECIMAL (INPUT num1 AS DECIMAL, INPUT num2 AS DECIMAL):
    IF num2 =0 THEN
        RETURN 0.        
    ELSE
        RETURN num1 / num2.
END FUNCTION.    
    

/*Configurando Inputs*/
DISPLAY "Digite o primeiro n�mero:" WITH FRAME calc_frame.  // instruindo o Progress a exibir a mensagem, campo de entrada no quadro chamado "calc_frame".
UPDATE num1 WITH FRAME calc_frame.

DISPLAY "Digite o segundo n�mero:" WITH FRAME calc_frame.
UPDATE num2 WITH FRAME calc_frame.

DISPLAY "Escolha uma opera��o (+, -, *, /):" WITH FRAME calc_frame.
UPDATE operation WITH FRAME calc_frame.


/*Atribuindo uma opera��o a cada caso*/
CASE operation:
    WHEN "+" THEN result_ = addition(num1, num2).
    WHEN "-" THEN result_ = subtraction(num1, num2).
    WHEN "*" THEN result_ = multiplication(num1, num2).
    WHEN "/" THEN result_ = division(num1, num2).
    OTHERWISE DISPLAY "Opera��o inv�lida".
END CASE.


/*Configurando exibi��o*/
DISPLAY "Resultado: " result_ WITH FRAME calc_frame.
WAIT-FOR WINDOW-CLOSE OF CURRENT-WINDOW.
