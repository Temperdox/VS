# PowerShell Age Calculator
# Run with: .\age_calculator.ps1

function Get-AgeMessage {
    param([int]$Age)

    if ($Age -lt 30) {
        return "You are young!"
    }
    elseif ($Age -ge 30 -and $Age -lt 67) {
        return "You are middle-aged."
    }
    elseif ($Age -ge 67 -and $Age -le 80) {
        return "You are aging and should travel the world!"
    }
    else {
        return "You should relax and enjoy your life!"
    }
}

do {
    # Get current year
    $currentYear = (Get-Date).Year

    # Welcome message
    Write-Host "`n========================================" -ForegroundColor Cyan
    Write-Host "   Welcome to the Age Calculator!" -ForegroundColor Cyan
    Write-Host "========================================`n" -ForegroundColor Cyan

    # Get user input
    $name = Read-Host "Please enter your name"
    $birthYear = Read-Host "Please enter your year of birth"

    # Calculate age
    $age = $currentYear - [int]$birthYear

    # Get appropriate message
    $message = Get-AgeMessage -Age $age

    # Output results
    Write-Host "`n----------------------------------------" -ForegroundColor Green
    Write-Host "Hello, $name!" -ForegroundColor Yellow
    Write-Host "You are $age years old." -ForegroundColor Yellow
    Write-Host $message -ForegroundColor Magenta
    Write-Host "----------------------------------------`n" -ForegroundColor Green

    # Ask to run again
    $runAgain = Read-Host "Would you like to run the program again? (yes/no)"

} while ($runAgain -eq "yes" -or $runAgain -eq "y")

Write-Host "`nThank you for using the Age Calculator. Goodbye!" -ForegroundColor Cyan
