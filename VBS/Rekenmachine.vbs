' Rekenmachine in VBS
' Door Senna Beerens

Dim num1, num2, resultaat, bewerking

' Vraag de gebruiker om de eerste getal in te voeren
num1 = InputBox("Voer het eerste getal in:")

' Vraag de gebruiker om de tweede getal in te voeren
num2 = InputBox("Voer het tweede getal in:")

' Vraag de gebruiker om de bewerking te kiezen
bewerking = InputBox("Kies de bewerking: +, -, *, /")

' Converteer de invoer naar getallen
num1 = CDbl(num1)
num2 = CDbl(num2)

' Voer de gekozen bewerking uit
If bewerking = "+" Then
    resultaat = num1 + num2
ElseIf bewerking = "-" Then
    resultaat = num1 - num2
ElseIf bewerking = "*" Then
    resultaat = num1 * num2
ElseIf bewerking = "/" Then
    If num2 <> 0 Then
        resultaat = num1 / num2
    Else
        resultaat = "Fout: Delen door nul is niet toegestaan."
    End If
Else
    resultaat = "Ongeldige bewerking."
End If

' Toon het resultaat
MsgBox "Het resultaat is: " & resultaat
