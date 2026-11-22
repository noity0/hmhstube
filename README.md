# hmhstube - A YouTube Experience in a Single HTML File

hmhstube is a complete YouTube-like platform built with pure HTML, CSS, and JavaScript. It provides A-Z access to all YouTube videos, automatic channel-upload sync, strong search, feeds, and a polished UI/UX - all in a single file with no backend required.

## Features

- **A-Z Access**: Browse all YouTube videos alphabetically
- **Channel Sync**: Automatically sync with your favorite channels
- **Search**: Full search across YouTube's catalog
- **Feeds**: Personalized home feed with recommendations
- **Downloads**: Save videos for offline viewing
- **Polished UI**: Modern, responsive design inspired by YouTube
- **Error 153 Fix**: Proper HTTP serving for YouTube embeds
- **No Backend**: Uses localStorage and YouTube Data API

## Setup Instructions

### Option 1: GitHub Pages (Recommended)

1. Fork this repository to your GitHub account
2. Enable GitHub Pages in your repository settings
3. Set the source to the `main` branch
4. Visit your GitHub Pages URL (usually `https://yourusername.github.io/hmhhstube/`)
5. For the original repository: https://noity0.github.io/hmhstube/ (once enabled)

### Option 2: Local Development

1. Download the repository
2. Run the local server:
   ```bash
   node serve.js
   ```
3. Open your browser to `http://127.0.0.1:8087/youtube-full-sync.html`

### Option 3: Direct File (Limited)

1. Open `youtube-full-sync.html` directly in your browser
   - Note: YouTube embeds may fail with Error 153
   - Use the local server for full functionality

## Usage

1. **Add Channels**: Click the gear icon in the top right, then "Add channels"
2. **Sync Channels**: Click "Sync now" to fetch latest uploads
3. **Browse Videos**: Use the sidebar to navigate between sections
4. **Search**: Use the search bar to find videos across YouTube
5. **Download**: Click the download button on any video card or use the context menu
6. **Watch Videos**: Click any video to play it inline

## File Structure

- `youtube-full-sync.html` - Main application (single file)
- `serve.js` - Local development server (fixes Error 153)
- `launch-page.bat` - Launcher for Windows
- `run-youtube-full-sync.bat` - Main launcher with server

## API Key

The app uses a shared YouTube Data API key. For production use, add your own key:

1. Go to [Google Cloud Console](https://console.cloud.google.com/apis/library/youtube.googleapis.com)
2. Enable the YouTube Data API v3
3. Create an API key
4. Replace the API key in the code or set it in localStorage as `hmhs_yt_key`

## Technical Details

- **Architecture**: Single-page application with hash routing
- **Storage**: localStorage for user data and cache
- **API**: YouTube Data API v3
- **Embeds**: Official YouTube iframe embed with proper headers
- **Error Handling**: Graceful fallbacks for API limits and network issues

## Troubleshooting

### Error 153 (YouTube Embed Blocked)

This occurs when opening the HTML file directly. Use the local server:
```bash
node serve.js
```

### API Quota Limits

The shared API key has a daily limit of 10,000 units. For heavy usage:
1. Add your own API key
2. Use the app offline after initial sync
3. Reduce sync frequency

### Network Issues

If you can't access YouTube APIs:
- The app will work with cached data
- Search and sync will be limited
- Use a VPN or different network if possible

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - see LICENSE file for details

## Tags

youtube, frontend, javascript, html, css, single-page-app, youtube-api, video-platform, offline, responsive