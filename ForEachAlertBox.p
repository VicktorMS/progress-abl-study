FOR EACH employee NO-LOCK WHERE Employee.FirstName = 'Frank':
    MESSAGE 
        "Your name: " Employee.FirstName Employee.LastName
        VIEW-AS 
            ALERT-BOX INFORMATION 
            BUTTONS OK 
            TITLE "Are you Frank?".
END.
