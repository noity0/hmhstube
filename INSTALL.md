# Installation Guide for hmhstube

## 🚀 Quick Install

### Option 1: GitHub Pages (Recommended)

1. **Fork the Repository**
   - Go to: https://github.com/noity0/hmhstube
   - Click "Fork" button

2. **Enable GitHub Pages**
   - Go to your forked repository settings
   - Scroll to "GitHub Pages"
   - Select "Deploy from a branch" → "main"
   - Click "Save"

3. **Access Your Site**
   - Your live site: `https://YOUR_USERNAME.github.io/hmhstube/`

### Option 2: Local Development

1. **Download the Repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/hmhstube.git
   cd hmhstube
   ```

2. **Install Dependencies**
   - No installation needed! Just Node.js for the server

3. **Start the Server**
   ```bash
   node serve.js
   ```

4. **Open in Browser**
   - Visit: `http://127.0.0.1:8087/`

### Option 3: Direct Download

1. **Download ZIP**
   - Go to: https://github.com/noity0/hmhstube/archive/refs/heads/main.zip
   - Extract the ZIP file

2. **Use Locally**
   - Open `index.html` in a browser
   - ⚠️ Note: YouTube embeds may fail with Error 153
   - ✅ Use `serve.js` for full functionality

## 📋 Requirements

### System Requirements
- **Browser**: Modern browser (Chrome, Firefox, Safari, Edge)
- **Internet**: Required for initial sync and search
- **Storage**: ~50MB for cache and user data
- **Node.js**: Only for local server (v14+ recommended)

### Browser Support
- ✅ Chrome 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+

## 🔧 Configuration

### First Run
1. **Open the App**
   - GitHub Pages: `https://YOUR_USERNAME.github.io/hmhstube/`
   - Local: `http://127.0.0.1:8087/`

2. **Add Channels**
   - Click the gear icon ⚙️
   - Enter channel names (comma-separated)
   - Click "Sync now"

3. **Wait for Sync**
   - First sync may take 1-2 minutes
   - Subsequent syncs are faster

### API Key Setup
The app includes a **public API key** with 10,000 units/day quota.

#### For Higher Quota:
1. **Get API Key**
   - Go to: https://console.cloud.google.com/
   - Create project → Enable YouTube Data API v3 → Create key

2. **Add Key**
   - In app: Settings → API Key → Enter your key
   - Or in browser console: `localStorage.setItem('hmhs_yt_key', 'YOUR_KEY')`

## 🎯 Basic Usage

### Adding Channels
1. Click settings icon ⚙️
2. Enter channel names (e.g., "MrBeast, PewDiePie, TED")
3. Click "Sync now"
4. Wait for completion (1-2 minutes)

### Browsing Videos
- **Home**: Personalized feed
- **Trending**: Popular videos
- **A-Z**: Alphabetical index
- **Categories**: Music, Gaming, News, etc.

### Searching
1. Type in search bar
2. Press Enter or click search
3. Results load from YouTube API

### Downloading Videos
1. Click download button ⬇️ on video card
2. Or use context menu (⋮) → "Add to downloads"
3. Access downloads from sidebar

### Watching Videos
1. Click any video to play
2. Use YouTube's player controls
3. Progress is saved automatically

## 🔄 Sync Settings

### Default Settings
- **Interval**: 10 minutes
- **Max Videos**: 500 per channel
- **Cache Time**: 24 hours for details

### Customizing Sync
1. Go to Settings
2. Adjust sync interval
3. Set max videos per channel
4. Clear cache if needed

## 🐛 Troubleshooting

### Common Issues

#### Error 153 (YouTube Embed Blocked)
**Cause**: Opening HTML file directly
**Solution**: Use local server
```bash
node serve.js
```

#### API Quota Exceeded
**Cause**: Daily limit reached
**Solution**:
- Wait for reset (midnight PST)
- Add your own API key
- Reduce sync frequency

#### Videos Not Loading
**Solutions**:
- Check internet connection
- Try refreshing the page
- Clear browser cache
- Add your own API key

#### Sync Not Working
**Solutions**:
- Check channel names
- Ensure internet access
- Try different channels
- Add your own API key

### Performance Tips

1. **Use Your Own API Key** for unlimited access
2. **Reduce Sync Frequency** to save quota
3. **Use Cached Data** when offline
4. **Close Unused Tabs** to free memory

## 📱 Mobile Setup

### Mobile Browser
1. Open the URL in mobile browser
2. Add to home screen (PWA support)
3. Use just like desktop version

### Mobile Apps
- **PWA**: Add to home screen for app-like experience
- **Responsive**: Works on all screen sizes
- **Touch Optimized**: Designed for touch interactions

## 🚀 Advanced Setup

### Custom Domain (GitHub Pages)
1. **Configure Custom Domain**
   - In GitHub Pages settings
   - Add your domain
   - Update DNS records

### Self-Hosting
1. **Install Web Server**
   - Nginx, Apache, or similar
   - Serve static files

2. **Configure Server**
   - Set correct MIME types
   - Enable compression
   - Set cache headers

3. **HTTPS Setup**
   - Use Let's Encrypt
   - Configure SSL/TLS

### Development
1. **Clone Repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/hmhstube.git
   cd hmhstube
   ```

2. **Modify Code**
   - Edit `index.html` for UI changes
   - Edit `serve.js` for server changes

3. **Test Changes**
   ```bash
   node serve.js
   ```

## 📞 Support

### Getting Help
1. **Check Documentation**: README.md, API_KEY.md, INSTALL.md
2. **Search Issues**: GitHub issues section
3. **Create Issue**: New issue with detailed description

### Bug Reports
Include:
- Steps to reproduce
- Browser and OS info
- Console errors (if any)
- Expected vs actual behavior

### Feature Requests
Include:
- Detailed description
- Use case
- Mockups (if applicable)

---

*Need more help? Check the full documentation in the README.md file.*