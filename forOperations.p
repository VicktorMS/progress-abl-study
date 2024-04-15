//USE-INDEX: Exibe a tabela de acordo com a ordem do CustNum
/*
FOR EACH Customer NO-LOCK USE-INDEX CustNum:
    DISPLAY Customer.CustNum
            Customer.Country
            Customer.PostalCode
            Customer.State
            WITH WIDTH 599.
END.
*/


// Exibe a tabela de acordo com o campo country
/*
FOR EACH Customer NO-LOCK USE-INDEX Country:
    DISPLAY Customer.CustNum
            Customer.Country
            Customer.PostalCode
            Customer.State
            WITH WIDTH 599.
END.
*/


// BY: Ordenando a Tabela de tr�s para frente, em um campo sem indice
/*
FOR EACH Customer NO-LOCK BY Customer.CustNum DESC:
    DISPLAY Customer.CustNum
        Customer.Country
        Customer.PostalCode
        Customer.State
        WITH WIDTH 599. 
END.
*/
// Custa muito mais na performance do que na ordena��o pelo indice


// FIRST: respeita ordena��o do indice prim�rio, retorna primeira linha 
/*
FOR FIRST Customer NO-LOCK USE-INDEX Country:
    DISPLAY Customer.CustNum
            Customer.Country
            Customer.PostalCode
            Customer.State
            WITH WIDTH 599.
END
*/

//WHERE:
/*
FOR EACH Customer NO-LOCK WHERE Customer.Country = 'USA':
    DISPLAY Customer.CustNum
        Customer.Country
        Customer.PostalCode
        Customer.State
        WITH WIDTH 599. 
END.
*/

FOR LAST Customer NO-LOCK WHERE Customer.Country = 'Australia':
    DISPLAY Customer.CustNum
        Customer.Country
        Customer.PostalCode
        Customer.State
        WITH WIDTH 599. 
END.


/*
OPERADORES:

Operadores Aritm�ticos:
+ (adi��o)
- (subtra��o)
* (multiplica��o)
/ (divis�o)
MOD (m�dulo, retorna o resto da divis�o)

Operadores de Compara��o:
= (igual a)
<> (diferente de)
< (menor que)
> (maior que)
<= (menor ou igual a)
>= (maior ou igual a)

Operadores L�gicos:
AND (e l�gico)
OR (ou l�gico)
NOT (nega��o l�gica)

Operadores de Concatena��o de Strings:
+ (concatena��o de strings)

Operadores de Atribui��o:
= (atribui��o simples)

Outros Operadores:
LIKE (para compara��o de padr�es de strings)
IS (para testar tipos de dados)
NO-ERROR (para manipula��o de erros)
TRUNCATE (para truncar strings)
*/
