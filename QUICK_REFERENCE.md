# hmhstube Quick Reference Card

## 🚀 Getting Started

### 1. Access Options
- **GitHub Pages**: `https://YOUR_USERNAME.github.io/hmhstube/`
- **Local Server**: `node serve.js` → `http://127.0.0.1:8087/`
- **Direct File**: Open `index.html` (may have Error 153)

### 2. First Setup
1. Click settings gear ⚙️
2. Add channels: `MrBeast, PewDiePie, TED, NASA`
3. Click "Sync now"
4. Wait 1-2 minutes

## 🔍 Core Features

### Navigation
- **Home**: Personalized feed
- **Trending**: Popular videos
- **Subscriptions**: Latest from your channels
- **Latest**: New uploads
- **A-Z**: Alphabetical index
- **Downloads**: Saved videos

### Video Actions
- **Click Video**: Watch in player
- **Heart 🤍**: Like video
- **Bookmark 📖**: Save for later
- **Download ⬇️**: Add to downloads
- **⋮ Menu**: More options

### Search
- Type in search bar
- Press Enter or click search
- Results from YouTube API
- 100 units per search

## ⬇️ Download System

### How to Download
1. **Download Button**: Click ⬇️ on video card
2. **Context Menu**: Click ⋮ → "Add to downloads"
3. **Watch Page**: Click download in video info

### Manage Downloads
- **Access**: Sidebar → "Downloads"
- **Remove**: Click ⋮ → "Remove from downloads"
- **Storage**: Saved in browser localStorage

## ⚙️ Settings

### API Key
- **Built-in**: Public key (10,000 units/day)
- **Custom**: Add your own key for unlimited access
- **Location**: Settings → "YouTube Data API v3 key"

### Channel Sync
- **Add Channels**: Settings → "Auto-sync channels"
- **Format**: Channel names separated by commas
- **Sync**: Every 10 minutes (configurable)
- **Quota**: ~16 units per sync

### Data Management
- **Clear Cache**: Remove cached video details
- **Clear History**: Delete watch history
- **Clear Downloads**: Remove download list
- **Clear All**: Reset everything

## 📱 Mobile Tips

### PWA Installation
1. Open in mobile browser
2. Tap menu ⋮ or •••
3. Select "Add to Home Screen"
4. Launch like native app

### Mobile Optimization
- **Use WiFi**: Reduces data usage
- **Clear Cache**: If performance issues
- **Close App**: When not in use

## 🐛 Troubleshooting

### Error 153 (YouTube Embed Blocked)
- **Cause**: Opening HTML file directly
- **Fix**: Use local server `node serve.js`

### API Quota Exceeded
- **Message**: "Daily YouTube API quota exceeded"
- **Solutions**:
  1. Wait for reset (midnight PST)
  2. Add your own API key
  3. Reduce sync frequency
  4. Use cached data

### Videos Not Loading
- **Check**: Internet connection
- **Try**: Different channels
- **Fix**: Clear cache, add your own key

## ⌨️ Keyboard Shortcuts

- `/` - Focus search
- `Escape` - Close modal
- `Arrow keys` - Navigate videos
- `Enter` - Select video
- `Space` - Play/pause

## 🔑 API Key Information

### Public Key (Included)
```
AIzaSyDOmicLYutMLwTIkz4nkLei4_r3J-m8IhM
```

### Usage
- **Quota**: 10,000 units/day
- **Search**: 100 units per request
- **Video Details**: 1 unit per video
- **Safe for Public Use**

### Custom Key Setup
1. Go to https://console.cloud.google.com/
2. Create project → Enable YouTube Data API v3
3. Create API key
4. Add in Settings

## 📊 Storage Usage

### Local Storage
- **History**: Watch history
- **Liked**: Liked videos
- **Bookmarks**: Saved videos
- **Downloads**: Download list
- **Sync**: Channel data
- **Cache**: Video details

### Limits
- **Storage**: ~5MB total
- **Sync Videos**: 500 per channel
- **Cache Time**: 24 hours for details

## 🎯 Power User Tips

### Advanced Search
- **Specific**: `"how to build pc"`
- **Channel**: `"site:channel/UC... tutorial"`
- **Recent**: `"javascript 2023 tutorial"`

### Data Export
```javascript
// Backup your data
const backup = {
  history: JSON.parse(localStorage.getItem('hmhs_history') || '[]'),
  liked: JSON.parse(localStorage.getItem('hmhs_liked') || '{}'),
  bookmarks: JSON.parse(localStorage.getItem('hmhs_bookmarks') || '{}')
};
```

### Performance
- **Clear Cache** when slow
- **Reduce Sync** frequency
- **Use Your Own Key** for heavy usage
- **Close Tabs** when not in use

## 📞 Quick Help

### Resources
- **Full Guide**: [USER_GUIDE.md](USER_GUIDE.md)
- **API Info**: [API_KEY.md](API_KEY.md)
- **Install**: [INSTALL.md](INSTALL.md)
- **Overview**: [README.md](README.md)

### Get Help
1. Check documentation
2. Search existing issues
3. Create new issue with details
4. Include browser and OS info

---

*Need more details? Check the full [USER_GUIDE.md](USER_GUIDE.md) for comprehensive instructions.*