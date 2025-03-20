# Laad de .NET Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Maak een nieuw formulier
$form = New-Object Windows.Forms.Form
$form.Text = 'Eenvoudige Rekenkunde'
$form.Width = 300
$form.Height = 300

# Voeg een label toe voor de uitleg
$label = New-Object Windows.Forms.Label
$label.Text = 'Kies een bewerking'
$label.Width = 250
$label.Location = New-Object Drawing.Point(20, 20)
$form.Controls.Add($label)

# Maak knoppen voor de bewerkingen
$buttonAdd = New-Object Windows.Forms.Button
$buttonAdd.Text = 'Optellen'
$buttonAdd.Width = 100
$buttonAdd.Location = New-Object Drawing.Point(20, 60)
$form.Controls.Add($buttonAdd)

$buttonSubtract = New-Object Windows.Forms.Button
$buttonSubtract.Text = 'Aftrekken'
$buttonSubtract.Width = 100
$buttonSubtract.Location = New-Object Drawing.Point(150, 60)
$form.Controls.Add($buttonSubtract)

$buttonMultiply = New-Object Windows.Forms.Button
$buttonMultiply.Text = 'Vermenigvuldigen'
$buttonMultiply.Width = 100
$buttonMultiply.Location = New-Object Drawing.Point(20, 100)
$form.Controls.Add($buttonMultiply)

$buttonDivide = New-Object Windows.Forms.Button
$buttonDivide.Text = 'Delen'
$buttonDivide.Width = 100
$buttonDivide.Location = New-Object Drawing.Point(150, 100)
$form.Controls.Add($buttonDivide)

# Voeg invoervelden toe voor de getallen
$textBoxNum1 = New-Object Windows.Forms.TextBox
$textBoxNum1.Width = 100
$textBoxNum1.Location = New-Object Drawing.Point(20, 150)
$form.Controls.Add($textBoxNum1)

$textBoxNum2 = New-Object Windows.Forms.TextBox
$textBoxNum2.Width = 100
$textBoxNum2.Location = New-Object Drawing.Point(150, 150)
$form.Controls.Add($textBoxNum2)

# Voeg een label toe om het resultaat weer te geven
$resultLabel = New-Object Windows.Forms.Label
$resultLabel.Text = 'Resultaat:'
$resultLabel.Width = 250
$resultLabel.Location = New-Object Drawing.Point(20, 200)
$form.Controls.Add($resultLabel)

# Functie voor de optelbewerking
$buttonAdd.Add_Click({
    $num1 = [int]$textBoxNum1.Text
    $num2 = [int]$textBoxNum2.Text
    $result = $num1 + $num2
    $resultLabel.Text = "Resultaat: $result"
})

# Functie voor de aftrekbewerking
$buttonSubtract.Add_Click({
    $num1 = [int]$textBoxNum1.Text
    $num2 = [int]$textBoxNum2.Text
    $result = $num1 - $num2
    $resultLabel.Text = "Resultaat: $result"
})

# Functie voor de vermenigvuldigingsbewerking
$buttonMultiply.Add_Click({
    $num1 = [int]$textBoxNum1.Text
    $num2 = [int]$textBoxNum2.Text
    $result = $num1 * $num2
    $resultLabel.Text = "Resultaat: $result"
})

# Functie voor de delingsbewerking
$buttonDivide.Add_Click({
    $num1 = [int]$textBoxNum1.Text
    $num2 = [int]$textBoxNum2.Text
    if ($num2 -eq 0) {
        $resultLabel.Text = "Fout: Delen door nul is niet toegestaan!"
    } else {
        $result = $num1 / $num2
        $resultLabel.Text = "Resultaat: $result"
    }
})

# Toon het formulier
$form.ShowDialog()
