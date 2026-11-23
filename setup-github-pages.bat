@echo off
echo Setting up GitHub Pages for hmhstube...
echo.
echo This script will help you enable GitHub Pages for your repository.
echo.
echo Step 1: Fork this repository (if not already done)
echo   - Go to: https://github.com/noity0/hmhstube
echo   - Click "Fork" button in the top right
echo.
echo Step 2: Enable GitHub Pages
echo   - Go to your forked repository: https://github.com/YOUR_USERNAME/hmhstube
echo   - Click on "Settings"
echo   - Scroll down to "GitHub Pages" section
echo   - Under "Source", select "Deploy from a branch"
echo   - Select "main" as the branch
echo   - Click "Save"
echo.
echo Step 3: Wait for deployment
echo   - GitHub Pages will take a few minutes to deploy
echo   - Your site will be available at: https://YOUR_USERNAME.github.io/hmhstube/
echo.
echo Step 4: Update the repository URL in the README
echo   - The script will update the README with your GitHub Pages URL
echo.
echo Press any key to continue with updating the README...
pause >nul

:: Update README with placeholder for user to replace
echo.
echo Creating updated README with GitHub Pages instructions...
echo.

:: Read the current README
set "readmeFile=README.md"
if exist "%readmeFile%" (
    type "%readmeFile%" > temp_readme.md
) else (
    echo README.md not found!
    pause
    exit /b 1
)

:: Create updated README
echo # hmhstube - A YouTube Experience in a Single HTML File > new_readme.md
echo. >> new_readme.md
echo hmhstube is a complete YouTube-like platform built with pure HTML, CSS, and JavaScript. It provides A-Z access to all YouTube videos, automatic channel-upload sync, strong search, feeds, and a polished UI/UX - all in a single file with no backend required. >> new_readme.md
echo. >> new_readme.md
echo ## Features >> new_readme.md
echo. >> new_readme.md
echo - **A-Z Access**: Browse all YouTube videos alphabetically >> new_readme.md
echo - **Channel Sync**: Automatically sync with your favorite channels >> new_readme.md
echo - **Search**: Full search across YouTube's catalog >> new_readme.md
echo - **Feeds**: Personalized home feed with recommendations >> new_readme.md
echo - **Downloads**: Save videos for offline viewing >> new_readme.md
echo - **Polished UI**: Modern, responsive design inspired by YouTube >> new_readme.md
echo - **Error 153 Fix**: Proper HTTP serving for YouTube embeds >> new_readme.md
echo - **No Backend**: Uses localStorage and YouTube Data API >> new_readme.md
echo. >> new_readme.md
echo ## Setup Instructions >> new_readme.md
echo. >> new_readme.md
echo ### Option 1: GitHub Pages (Recommended) >> new_readme.md
echo. >> new_readme.md
echo 1. Fork this repository to your GitHub account >> new_readme.md
echo 2. Enable GitHub Pages in your repository settings >> new_readme.md
echo 3. Set the source to the `main` branch >> new_readme.md
echo 4. Your site will be available at: https://YOUR_USERNAME.github.io/hmhstube/ >> new_readme.md
echo 5. Replace YOUR_USERNAME with your actual GitHub username >> new_readme.md
echo. >> new_readme.md
echo ### Option 2: Local Development >> new_readme.md
echo. >> new_readme.md
echo 1. Download the repository >> new_readme.md
echo 2. Run the local server: >> new_readme.md
echo    ```bash >> new_readme.md
echo    node serve.js >> new_readme.md
echo    ``` >> new_readme.md
echo 3. Open your browser to http://127.0.0.1:8087/index.html >> new_readme.md
echo. >> new_readme.md
echo ### Option 3: Direct File (Limited) >> new_readme.md
echo. >> new_readme.md
echo 1. Open index.html directly in your browser >> new_readme.md
echo    - Note: YouTube embeds may fail with Error 153 >> new_readme.md
echo    - Use the local server for full functionality >> new_readme.md
echo. >> new_readme.md
echo ## Usage >> new_readme.md
echo. >> new_readme.md
echo 1. **Add Channels**: Click the gear icon in the top right, then "Add channels" >> new_readme.md
echo 2. **Sync Channels**: Click "Sync now" to fetch latest uploads >> new_readme.md
echo 3. **Browse Videos**: Use the sidebar to navigate between sections >> new_readme.md
echo 4. **Search**: Use the search bar to find videos across YouTube >> new_readme.md
echo 5. **Download**: Click the download button on any video card or use the context menu >> new_readme.md
echo 6. **Watch Videos**: Click any video to play it inline >> new_readme.md
echo. >> new_readme.md
echo ## File Structure >> new_readme.md
echo. >> new_readme.md
echo - `index.html` - Main application (single file) >> new_readme.md
echo - `serve.js` - Local development server (fixes Error 153) >> new_readme.md
echo - `launch-page.bat` - Launcher for Windows >> new_readme.md
echo - `run-youtube-full-sync.bat` - Main launcher with server >> new_readme.md
echo. >> new_readme.md
echo ## API Key >> new_readme.md
echo. >> new_readme.md
echo The app uses a shared YouTube Data API key. For production use, add your own key: >> new_readme.md
echo. >> new_readme.md
echo 1. Go to [Google Cloud Console](https://console.cloud.google.com/apis/library/youtube.googleapis.com) >> new_readme.md
echo 2. Enable the YouTube Data API v3 >> new_readme.md
echo 3. Create an API key >> new_readme.md
echo 4. Replace the API key in the code or set it in localStorage as `hmhs_yt_key` >> new_readme.md
echo. >> new_readme.md
echo ## Technical Details >> new_readme.md
echo. >> new_readme.md
echo - **Architecture**: Single-page application with hash routing >> new_readme.md
echo - **Storage**: localStorage for user data and cache >> new_readme.md
echo - **API**: YouTube Data API v3 >> new_readme.md
echo - **Embeds**: Official YouTube iframe embed with proper headers >> new_readme.md
echo - **Error Handling**: Graceful fallbacks for API limits and network issues >> new_readme.md
echo. >> new_readme.md
echo ## Troubleshooting >> new_readme.md
echo. >> new_readme.md
echo ### Error 153 (YouTube Embed Blocked) >> new_readme.md
echo. >> new_readme.md
echo This occurs when opening the HTML file directly. Use the local server: >> new_readme.md
echo. >> new_readme.md
echo ```bash >> new_readme.md
echo node serve.js >> new_readme.md
echo ``` >> new_readme.md
echo. >> new_readme.md
echo ### API Quota Limits >> new_readme.md
echo. >> new_readme.md
echo The shared API key has a daily limit of 10,000 units. For heavy usage: >> new_readme.md
echo 1. Add your own API key >> new_readme.md
echo 2. Use the app offline after initial sync >> new_readme.md
echo 3. Reduce sync frequency >> new_readme.md
echo. >> new_readme.md
echo ### Network Issues >> new_readme.md
echo. >> new_readme.md
echo If you can't access YouTube APIs: >> new_readme.md
echo - The app will work with cached data >> new_readme.md
echo - Search and sync will be limited >> new_readme.md
echo - Use a VPN or different network if possible >> new_readme.md
echo. >> new_readme.md
echo ## Contributing >> new_readme.md
echo. >> new_readme.md
echo 1. Fork the repository >> new_readme.md
echo 2. Create a feature branch >> new_readme.md
echo 3. Make your changes >> new_readme.md
echo 4. Submit a pull request >> new_readme.md
echo. >> new_readme.md
echo ## License >> new_readme.md
echo. >> new_readme.md
echo MIT License - see LICENSE file for details >> new_readme.md
echo. >> new_readme.md
echo ## Tags >> new_readme.md
echo. >> new_readme.md
echo youtube, frontend, javascript, html, css, single-page-app, youtube-api, video-platform, offline, responsive >> new_readme.md
echo. >> new_readme.md
echo ## Live Demo >> new_readme.md
echo. >> new_readme.md
echo Once you enable GitHub Pages, your live site will be available at: >> new_readme.md
echo https://YOUR_USERNAME.github.io/hmhstube/ >> new_readme.md
echo. >> new_readme.md
echo Replace YOUR_USERNAME with your actual GitHub username. >> new_readme.md

:: Replace the original README
move /Y new_readme.md README.md >nul

echo.
echo README.md has been updated with GitHub Pages instructions.
echo.
echo Next steps:
echo 1. Fork the repository at https://github.com/noity0/hmhstube
echo 2. Enable GitHub Pages in your fork's settings
echo 3. Replace YOUR_USERNAME in the README with your actual GitHub username
echo 4. Commit and push the updated README
echo.
echo Your live site will be available at: https://YOUR_USERNAME.github.io/hmhstube/
echo.
echo Press any key to open the repository in browser...
pause >nul
start https://github.com/noity0/hmhstube