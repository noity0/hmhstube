# hmhstube - A YouTube Experience in a Single HTML File 

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Ready-blue.svg)](https://pages.github.com/)
[![YouTube API](https://img.shields.io/badge/YouTube%20API-v3-red.svg)](https://developers.google.com/youtube)

hmhstube is a complete YouTube-like platform built with pure HTML, CSS, and JavaScript. It provides A-Z access to all YouTube videos, automatic channel-upload sync, strong search, feeds, downloads, and a polished UI/UX - all in a single file with no backend required.

## 🎯 Features

- **🔤 A-Z Access**: Browse all YouTube videos alphabetically with our comprehensive index
- **🔄 Channel Sync**: Automatically sync with your favorite channels and get latest uploads
- **🔍 Powerful Search**: Search across YouTube's entire catalog with instant results
- **📰 Personalized Feeds**: Home feed with recommendations based on your viewing history
- **⬇️ Downloads**: Save videos for offline viewing with our built-in download system
- **🎨 Polished UI**: Modern, responsive design inspired by YouTube
- **🔧 Error 153 Fix**: Proper HTTP serving for YouTube embeds
- **💾 No Backend**: Uses localStorage and YouTube Data API
- **📱 Mobile Responsive**: Works perfectly on all devices

## 🚀 Quick Start

### Option 1: GitHub Pages (Recommended)

1. **Fork this repository** to your GitHub account
2. **Enable GitHub Pages** in your repository settings:
   - Go to your forked repository
   - Click Settings → GitHub Pages
   - Select "Deploy from a branch" → "main"
   - Click Save
3. **Your site will be available at**: `https://YOUR_USERNAME.github.io/hmhstube/`
4. **Replace YOUR_USERNAME** with your actual GitHub username

### Option 2: Local Development

1. **Download the repository**
2. **Start the local server**:
   ```bash
   node serve.js
   ```
3. **Open your browser** to `http://127.0.0.1:8087/index.html`

### Option 3: Direct File (Limited)

1. **Open index.html directly** in your browser
   - ⚠️ Note: YouTube embeds may fail with Error 153
   - ✅ Use the local server for full functionality

## 📖 Usage Guide

### Getting Started

1. **Add Channels**: Click the gear icon ⚙️ in the top right, then "Add channels"
   - Enter channel names separated by commas
   - Click "Sync now" to fetch latest uploads
2. **Browse Videos**: Use the sidebar to navigate between sections:
   - Home: Your personalized feed
   - Trending: Popular videos
   - Subscriptions: Latest from your channels
   - Latest: New uploads
   - A-Z: Alphabetical index
   - Downloads: Your saved videos
   - History: Watch history
   - Liked: Your liked videos
   - Bookmarks: Saved videos
3. **Search**: Use the search bar to find videos across YouTube
4. **Download**: 
   - Click the download button ⬇️ on any video card
   - Or use the context menu (⋮) → "Add to downloads"
5. **Watch Videos**: Click any video to play it inline

### Advanced Features

- **Sync Settings**: Configure sync intervals in settings
- **API Key Management**: Add your own YouTube API key for higher limits
- **Download Management**: Remove downloads from the Downloads section
- **Progress Tracking**: See your watch progress on video cards
- **Dark Mode**: Built-in dark theme (YouTube's default)

## 📁 File Structure

```
hmhstube/
├── index.html              # Main application (130KB - all features included)
├── serve.js                # Local development server (Node.js, zero dependencies)
├── launch-page.bat         # Windows launcher
├── run-youtube-full-sync.bat # Main launcher with server
├── README.md               # This file
├── LICENSE                 # MIT license
├── 404.html                # Custom 404 page
├── .nojekyll               # For GitHub Pages
├── enable-github-pages.ps1 # PowerShell setup script
├── setup-github-pages.bat   # Batch setup script
└── FINAL_SETUP.md          # Detailed setup guide
```

## 🔑 YouTube API Key

### Public API Key (Included)

The app includes a **public YouTube Data API v3 key** for immediate use:

```
AIzaSyDOmicLYutMLwTIkz4nkLei4_r3J-m8IhM
```

**⚠️ Important Notes:**
- This key has a **daily quota of 10,000 units**
- Shared among all users
- May reach limits during high usage
- **Safe for public use** - no sensitive data is sent

### Adding Your Own API Key (Recommended for Production)

For higher limits and reliability:

1. **Get API Key**:
   - Go to [Google Cloud Console](https://console.cloud.google.com/)
   - Create a new project
   - Enable **YouTube Data API v3**
   - Create an API key

2. **Use the Key**:
   - **Method 1**: Replace in code (find `AIzaSyDOmicLYutMLwTIkz4nkLei4_r3J-m8IhM`)
   - **Method 2**: Set in browser localStorage:
     ```javascript
     localStorage.setItem('hmhs_yt_key', 'YOUR_API_KEY_HERE');
     ```

3. **API Quota**:
   - Free tier: **10,000 units/day**
   - Search: 100 units per request
   - Video details: 1 unit per video
   - Sync: ~16 units per 8 channels

### API Usage Tips

- **Search**: Use specific queries for better results
- **Sync**: Set longer intervals (15-30 min) to save quota
- **Offline**: App works with cached data when API is limited
- **Heavy Usage**: Add your own key for unlimited access

## 🔧 Technical Details

### Architecture
- **Single-Page Application**: All functionality in one HTML file
- **Hash Routing**: Client-side navigation without page reloads
- **LocalStorage**: User data, cache, and preferences stored locally
- **YouTube Data API v3**: For video search, details, and channel data
- **YouTube iFrame Embed**: For video playback with Error 153 fix

### Performance
- **Fast Loading**: Optimized code and minimal dependencies
- **Caching**: Intelligent caching to reduce API calls
- **Lazy Loading**: Images and videos load on demand
- **Responsive Design**: Works on all screen sizes

### Security
- **No Backend**: All processing happens in the browser
- **HTTPS Ready**: Works with GitHub Pages and HTTPS servers
- **Referrer Policy**: Proper headers for YouTube embeds
- **No Tracking**: No analytics or data collection

## 🐛 Troubleshooting

### Error 153 (YouTube Embed Blocked)

**Cause**: Opening HTML file directly sends no referrer header
**Solution**: Use the local server:

```bash
node serve.js
```

Then open `http://127.0.0.1:8087/index.html`

### API Quota Exceeded

**Symptoms**: Search and sync stop working
**Solutions**:
1. **Wait**: Quota resets daily at midnight PST
2. **Reduce Usage**: Decrease sync frequency
3. **Add Key**: Use your own API key
4. **Use Cache**: App works with cached data

### Network Issues

**Symptoms**: Can't access YouTube APIs
**Solutions**:
- **Check Connection**: Ensure internet access
- **Try VPN**: Different networks may work
- **Use Cache**: App works with existing data
- **Clear Cache**: In settings → "Clear caches"

### GitHub Pages Issues

**Symptoms**: Site not loading or 404 errors
**Solutions**:
- **Wait**: Deployment takes 5-10 minutes
- **Check Settings**: Ensure GitHub Pages is enabled
- **Verify Files**: Ensure all files are committed
- **Check Branch**: Using correct branch (main)

## 🎨 Customization

### Styling
- **Theme**: Built-in dark theme (YouTube-like)
- **Colors**: CSS variables for easy customization
- **Fonts**: Uses system fonts for performance

### Branding
- **Logo**: Easily replaceable in the code
- **Title**: Customizable in the HTML title tag
- **Metadata**: Update meta tags for social sharing

## 📱 Mobile Support

- **Responsive Design**: Works on all screen sizes
- **Touch Support**: Optimized for touch interactions
- **Performance**: Fast loading on mobile networks
- **Offline**: Works without internet after initial sync

## 🚀 Deployment Options

### GitHub Pages (Recommended)
- **Free Hosting**: No cost for public repositories
- **HTTPS**: Automatic SSL certificate
- **CDN**: Global content delivery
- **Setup**: Automatic with repository settings

### Other Options
- **Netlify**: Drag and drop deployment
- **Vercel**: Serverless hosting
- **Firebase**: Hosting with database
- **Self-hosted**: Using the serve.js file

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Fork the Repository**
2. **Create a Feature Branch**: `git checkout -b feature/amazing-feature`
3. **Make Your Changes**: Follow the code style
4. **Test Thoroughly**: Ensure all features work
5. **Submit a Pull Request**: Detailed description of changes

### Development Guidelines
- **Code Style**: Follow existing patterns
- **Feature Requests**: Open issues with detailed descriptions
- **Bug Reports**: Include steps to reproduce
- **Documentation**: Update README for new features

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details

### Permissions
- **Commercial Use**: Allowed
- **Modification**: Allowed
- **Distribution**: Allowed
- **Private Use**: Allowed

### Conditions
- **Include License**: Must include license and copyright notice
- **No Liability**: Provided "as is" without warranty
- **No Endorsement**: Don't imply endorsement from authors

## 🏷️ Tags

youtube, frontend, javascript, html, css, single-page-app, youtube-api, video-platform, offline, responsive, github-pages, no-backend, pwa, mobile-friendly, dark-theme

## 🌐 Live Demo

Once you enable GitHub Pages, your live site will be available at:
`https://YOUR_USERNAME.github.io/hmhstube/`

Replace `YOUR_USERNAME` with your actual GitHub username.

## 📞 Support

### Getting Help
1. **Documentation**: Check this README and [FINAL_SETUP.md](FINAL_SETUP.md)
2. **Issues**: Search existing issues or create new ones
3. **Discussions**: Use GitHub Discussions for general questions

### Common Issues
- **GitHub Pages Not Working**: Follow setup guide
- **API Limits**: Add your own API key
- **Error 153**: Use local server
- **Mobile Issues**: Check browser compatibility

## 🎉 Acknowledgments

- **YouTube**: For the amazing platform and API
- **Font Awesome**: For the beautiful icons
- **GitHub**: For the hosting platform
- **Community**: For all the feedback and contributions

---

**Made with ❤️ by the hmhstube team**

*YouTube is a trademark of Google LLC. This project is not affiliated with Google or YouTube.*