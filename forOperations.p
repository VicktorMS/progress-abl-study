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


// BY: Ordenando a Tabela de trás para frente, em um campo sem indice
/*
FOR EACH Customer NO-LOCK BY Customer.CustNum DESC:
    DISPLAY Customer.CustNum
        Customer.Country
        Customer.PostalCode
        Customer.State
        WITH WIDTH 599. 
END.
*/
// Custa muito mais na performance do que na ordenação pelo indice


// FIRST: respeita ordenação do indice primário, retorna primeira linha 
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

Operadores Aritméticos:
+ (adição)
- (subtração)
* (multiplicação)
/ (divisão)
MOD (módulo, retorna o resto da divisão)

Operadores de Comparação:
= (igual a)
<> (diferente de)
< (menor que)
> (maior que)
<= (menor ou igual a)
>= (maior ou igual a)

Operadores Lógicos:
AND (e lógico)
OR (ou lógico)
NOT (negação lógica)

Operadores de Concatenação de Strings:
+ (concatenação de strings)

Operadores de Atribuição:
= (atribuição simples)

Outros Operadores:
LIKE (para comparação de padrões de strings)
IS (para testar tipos de dados)
NO-ERROR (para manipulação de erros)
TRUNCATE (para truncar strings)
*/
