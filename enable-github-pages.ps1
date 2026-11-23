# GitHub Pages Setup Script for hmhstube
# This script will help you enable GitHub Pages for your repository

Write-Host "Setting up GitHub Pages for hmhstube..." -ForegroundColor Green
Write-Host ""

Write-Host "Step 1: Fork the repository (if not already done)" -ForegroundColor Yellow
Write-Host "  - Go to: https://github.com/noity0/hmhstube" -ForegroundColor White
Write-Host "  - Click 'Fork' button in the top right" -ForegroundColor White
Write-Host ""

Write-Host "Step 2: Enable GitHub Pages" -ForegroundColor Yellow
Write-Host "  - Go to your forked repository: https://github.com/YOUR_USERNAME/hmhstube" -ForegroundColor White
Write-Host "  - Click on 'Settings'" -ForegroundColor White
Write-Host "  - Scroll down to 'GitHub Pages' section" -ForegroundColor White
Write-Host "  - Under 'Source', select 'Deploy from a branch'" -ForegroundColor White
Write-Host "  - Select 'main' as the branch" -ForegroundColor White
Write-Host "  - Click 'Save'" -ForegroundColor White
Write-Host ""

Write-Host "Step 3: Wait for deployment" -ForegroundColor Yellow
Write-Host "  - GitHub Pages will take a few minutes to deploy" -ForegroundColor White
Write-Host "  - Your site will be available at: https://YOUR_USERNAME.github.io/hmhstube/" -ForegroundColor White
Write-Host ""

Write-Host "Step 4: Update the repository URL in the README" -ForegroundColor Yellow
Write-Host "  - The script will update the README with your GitHub Pages URL" -ForegroundColor White
Write-Host ""

# Ask for GitHub username
$username = Read-Host "Enter your GitHub username (replace YOUR_USERNAME)"

# Update README with the user's GitHub username
$readmePath = "README.md"
if (Test-Path $readmePath) {
    $readmeContent = Get-Content $readmePath -Raw
    $readmeContent = $readmeContent -replace 'https://YOUR_USERNAME.github.io/hmhstube/', "https://$username.github.io/hmhstube/"
    $readmeContent | Set-Content $readmePath -NoNewline
    
    Write-Host "README.md has been updated with your GitHub username." -ForegroundColor Green
} else {
    Write-Host "README.md not found!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Fork the repository at https://github.com/noity0/hmhstube" -ForegroundColor White
Write-Host "2. Enable GitHub Pages in your fork's settings" -ForegroundColor White
Write-Host "3. Commit and push the updated README" -ForegroundColor White
Write-Host ""

# Ask if user wants to open the repository in browser
$openBrowser = Read-Host "Do you want to open the repository in browser? (y/n)"
if ($openBrowser -eq "y" -or $openBrowser -eq "Y") {
    Start-Process "https://github.com/noity0/hmhstube"
}

Write-Host ""
Write-Host "Your live site will be available at: https://$username.github.io/hmhstube/" -ForegroundColor Green
Write-Host ""
Write-Host "Thank you for using hmhstube!" -ForegroundColor Green