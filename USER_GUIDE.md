# hmhstube Complete User Guide

## Table of Contents
1. [Getting Started](#getting-started)
2. [Interface Overview](#interface-overview)
3. [Core Features](#core-features)
4. [Advanced Features](#advanced-features)
5. [Download System](#download-system)
6. [Settings & Configuration](#settings-configuration)
7. [Troubleshooting](#troubleshooting)
8. [Mobile Usage](#mobile-usage)
9. [Power User Tips](#power-user-tips)

---

## Getting Started

### Step 1: Access hmhstube

#### Option A: GitHub Pages (Recommended)
1. Fork the repository at https://github.com/noity0/hmhstube
2. Enable GitHub Pages in your repository settings
3. Your live site will be at: `https://YOUR_USERNAME.github.io/hmhstube/`

#### Option B: Local Development
1. Download the repository
2. Run `node serve.js` in the terminal
3. Open `http://127.0.0.1:8087/` in your browser

#### Option C: Direct File
1. Download and extract the repository ZIP
2. Open `index.html` directly in your browser
   - Note: YouTube embeds may fail with Error 153

### Step 2: Initial Setup

1. **Add Channels**
   - Click the gear icon ⚙️ in the top right
   - Enter channel names separated by commas
   - Example: `MrBeast, PewDiePie, TED, NASA`
   - Click "Sync now"
   - Wait 1-2 minutes for the first sync

2. **Explore the Interface**
   - **Sidebar**: Navigation menu on the left
   - **Main Content**: Video grid and details
   - **Search Bar**: Top center for searching
   - **Settings Gear**: Top right for configuration

---

## Interface Overview

### 1. Header Section
```
┌─────────────────────────────────────────────────────────────┐
│ [🏠 Home] [🔥 Trending] [📡 Subscriptions] [⏰ Latest] [A-Z]  │
│                                                             │
│ 🔍 Search Bar                                              │
│ ⚙️ Settings Gear                                            │
└─────────────────────────────────────────────────────────────┘
```

**Header Elements:**
- **Navigation Chips**: Quick access to main sections
- **Search Bar**: Type to search YouTube
- **Settings Gear**: Opens configuration modal

### 2. Sidebar Navigation
```
┌─────────────────────────────────────────────────────────────┐
│ You                                                         │
│ ┌─────────────────────────────────────────────────────────┐ │
│ │ 🕒 History (0)                                          │ │
│ │ 👍 Liked (0)                                            │ │
│ │ 🔖 Bookmarks (0)                                        │ │
│ │ ⬇️ Downloads (0)                                        │ │
│ └─────────────────────────────────────────────────────────┘ │
│                                                             │
│ Channels                                                    │
│ ┌─────────────────────────────────────────────────────────┐ │
│ │ 🎥 MrBeast                                              │ │
│ │ 🎥 PewDiePie                                            │ │
│ │ 🎥 TED                                                  │ │
│ │ 🎥 NASA                                                 │ │
│ └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

**Sidebar Sections:**
- **You**: Personal library (History, Liked, Bookmarks, Downloads)
- **Channels**: Your subscribed channels with sync status

### 3. Main Content Area
```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│ 🎥 Video Card 1    🎥 Video Card 2    🎥 Video Card 3      │
│ ┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐ │
│ │ 🖼️ Thumbnail     │ │ 🖼️ Thumbnail     │ │ 🖼️ Thumbnail     │ │
│ │ ⏱️ 12:34        │ │ ⏱️ 8:45         │ │ ⏱️ 15:20        │ │
│ │ 📝 Title        │ │ 📝 Title        │ │ 📝 Title        │ │
│ │ 👤 Channel      │ │ 👤 Channel      │ │ 👤 Channel      │ │
│ │ 👁️ 1.2M views   │ │ 👁️ 850K views   │ │ 👁️ 2.3M views   │ │
│ │ ⬇️ Download     │ │ ⬇️ Download     │ │ ⬇️ Download     │ │
│ └─────────────────┘ ┌─────────────────┘ ┌─────────────────┘ │
│                                                             │
│ 🎥 Video Card 4    🎥 Video Card 5    🎥 Video Card 6      │
│ ┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐ │
│ │ 🖼️ Thumbnail     │ │ 🖼️ Thumbnail     │ │ 🖼️ Thumbnail     │ │
│ │ ⏱️ 22:10        │ │ ⏱️ 5:30         │ │ ⏱️ 18:45        │ │
│ │ 📝 Title        │ │ 📝 Title        │ │ 📝 Title        │ │
│ │ 👤 Channel      │ │ 👤 Channel      │ │ 👤 Channel      │ │
│ │ 👁️ 560K views   │ │ 👁️ 2.1M views   │ │ 👁️ 980K views   │ │
│ │ ⬇️ Download     │ │ ⬇️ Download     │ │ ⬇️ Download     │ │
│ └─────────────────┘ ┌─────────────────┘ ┌─────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

**Video Card Elements:**
- **Thumbnail**: Video preview image
- **Duration**: Video length
- **Title**: Video title (truncated)
- **Channel**: Channel name
- **Views**: View count
- **Download Button**: Save video for offline viewing

---

## Core Features

### 1. Home Feed
**Purpose**: Personalized content based on your viewing history and subscriptions

**Access**: Click "Home" in the header or sidebar

**Content Types:**
- **Continue Watching**: Videos you've partially watched
- **Recommended**: Based on your viewing history and preferences
- **New from Subscriptions**: Latest uploads from your channels
- **Discover**: Random selection of videos

**How it Works:**
1. Algorithm analyzes your watch history
2. Considers categories you've watched
3. Looks at channels you've subscribed to
4. Suggests similar content
5. Prioritizes new uploads from subscriptions

### 2. Trending Section
**Purpose**: Discover currently popular videos on YouTube

**Access**: Click "Trending" in the header

**Content Sources:**
- YouTube's trending algorithm
- Most viewed videos in the past 24-48 hours
- Viral and popular content
- Category-specific trending (when filtered)

**How to Use:**
1. Browse trending videos
2. Click any video to watch
3. Use category filters to narrow down interests
4. Sync channels to see trending from specific creators

### 3. A-Z Index
**Purpose**: Browse all available videos alphabetically

**Access**: Click "A-Z" in the header

**Features:**
- **Letter Filter**: Click letters to filter videos
- **Search within A-Z**: Use search bar for specific terms
- **Pagination**: Navigate through large result sets
- **Category Integration**: Mix with category filters

**How to Use:**
1. Click any letter to see videos starting with that letter
2. Use the search bar for specific searches
3. Combine with categories for focused browsing
4. Click videos to view details

### 4. Channel Sync
**Purpose**: Automatically get latest uploads from your favorite channels

**Access**: Settings → "Auto-sync channels"

**Setup Process:**
1. Click settings gear ⚙️
2. Enter channel names in the text box
3. Separate multiple channels with commas
4. Click "Add channels"
5. Click "Sync now" to fetch latest uploads

**Example Channel List:**
```
MrBeast, PewDiePie, freeCodeCamp.org, TED, NASA, Google Developers, Netflix, BBC News
```

**Sync Details:**
- **Interval**: Every 10 minutes by default
- **Max Videos**: 500 per channel (configurable)
- **Cache**: 24 hours for video details
- **Quota**: ~16 units per sync (8 channels × 2 API calls)

### 5. Search Functionality
**Purpose**: Find videos across YouTube's entire catalog

**Access**: Search bar in the header

**Search Types:**
- **Video Titles**: Search for specific videos
- **Channel Names**: Find channels and their uploads
- **Keywords**: General topic searches
- **Mixed**: Combination of all types

**Search Tips:**
1. **Be Specific**: Use exact phrases for better results
2. **Use Keywords**: Focus on important terms
3. **Filter Results**: Use categories to narrow searches
4. **Check Results**: Preview thumbnails and titles before clicking

**Search Limitations:**
- **Quota**: 100 units per search
- **Results**: Limited to API constraints
- **Caching**: Results cached for 6 hours

---

## Advanced Features

### 1. Watch History
**Purpose**: Track and resume videos you've watched

**Access**: Sidebar → "History"

**Features:**
- **Auto-Tracking**: Videos are added to history when watched
- **Progress Bar**: Shows how much you've watched
- **Resume Playback**: Click to continue from where you left off
- **Time Tracking**: Shows when you last watched

**How it Works:**
1. When you start watching a video, it's added to history
2. Progress is saved every 5 seconds
3. Return to the video to resume from your last position
4. History is stored locally in your browser

### 2. Liked Videos
**Purpose**: Save videos you've liked for easy access

**Access**: Sidebar → "Liked"

**Features:**
- **Like Button**: Heart icon on video cards and watch page
- **Persistent Storage**: Liked videos saved across sessions
- **Easy Access**: Quick access to all liked content
- **Visual Indicators**: Liked videos show a filled heart

**How to Use:**
1. Click the heart icon 🤍 on any video to like it
2. Access liked videos from the sidebar
3. Unlike by clicking the heart again
4. Liked videos are used for recommendations

### 3. Bookmarks
**Purpose**: Save specific videos for later viewing

**Access**: Sidebar → "Bookmarks"

**Features:**
- **Bookmark Button**: Bookmark icon on video cards
- **Organized Access**: All bookmarked videos in one place
- **Quick Access**: Easy to find saved content
- **Visual Indicators**: Bookmarked videos show a filled bookmark

**How to Use:**
1. Click the bookmark icon 📖 on any video to save it
2. Access bookmarks from the sidebar
3. Remove bookmark by clicking the icon again
4. Perfect for saving videos to watch later

### 4. Category Browsing
**Purpose**: Browse videos by specific categories

**Access**: Category chips in header or direct URLs

**Available Categories:**
- **All**: All videos
- **Music**: Music videos and performances
- **Gaming**: Gameplay, streams, and esports
- **Movies**: Movie trailers and clips
- **News**: News segments and updates
- **Sports**: Sports highlights and events
- **Education**: Educational content and tutorials

**How to Use:**
1. Click any category chip
2. Browse videos in that category
3. Use search within categories
4. Combine with A-Z for specific browsing

---

## Download System

### 1. Downloading Videos
**Purpose**: Save videos for offline viewing

**Methods to Download:**

#### Method A: Download Button
1. Hover over any video card
2. Click the download button ⬇️
3. Video is added to your downloads
4. Access from "Downloads" section

#### Method B: Context Menu
1. Click the three dots ⋮ on a video card
2. Select "Add to downloads"
3. Video is added to your downloads
4. Access from "Downloads" section

#### Method C: Watch Page
1. Click on a video to open the watch page
2. Click the download button in the video info
3. Video is added to your downloads

### 2. Downloads Management
**Access**: Sidebar → "Downloads"

**Features:**
- **Download List**: All your downloaded videos
- **Remove Downloads**: Click ⋮ → "Remove from downloads"
- **Download Status**: Shows when videos were downloaded
- **Persistent Storage**: Downloads saved across sessions

**How to Manage Downloads:**
1. View all your downloaded videos
2. Remove videos you no longer want
3. Downloads are stored in browser localStorage
4. No actual video files are downloaded (just metadata)

### 3. Download System Details
**Important Notes:**
- **No Actual Downloads**: The system only saves video metadata
- **Offline Viewing**: Use the "Downloads" section to find videos
- **External Links**: Click "Watch on YouTube" for actual downloads
- **Storage**: Uses browser localStorage, limited to ~5MB

**Download Workflow:**
1. User clicks download button
2. Video ID is saved to localStorage
3. Video appears in "Downloads" section
4. User can click to watch on YouTube
5. Metadata is cached for faster access

---

## Settings & Configuration

### 1. Accessing Settings
**Method**: Click the gear icon ⚙️ in the top right

**Settings Sections:**
- **YouTube Data API v3 Key**
- **Auto-sync Channels**
- **Local Data Management**
- **App Information**

### 2. API Key Configuration
**Purpose**: Configure YouTube API access

**Options:**
- **Built-in Key**: Public key with 10,000 units/day quota
- **Custom Key**: Your own key for higher limits

**How to Add Custom Key:**
1. Click settings gear ⚙️
2. Find "YouTube Data API v3 key" section
3. Enter your API key in the input field
4. Click "Save & test"
5. Verify the key works correctly

**Getting Your Own API Key:**
1. Go to https://console.cloud.google.com/
2. Create a new project
3. Enable "YouTube Data API v3"
4. Create an API key
5. Copy the key and paste it in hmhstube

### 3. Auto-sync Channels
**Purpose**: Manage channel subscriptions and sync settings

**Configuration:**
- **Channel List**: Add/remove channels to sync
- **Sync Interval**: How often to check for new videos
- **Max Videos**: Maximum videos to sync per channel
- **Auto-sync**: Enable/disable automatic syncing

**How to Configure:**
1. Click settings gear ⚙️
2. Find "Auto-sync channels" section
3. Enter channel names separated by commas
4. Adjust sync settings as needed
5. Click "Save" to apply changes

### 4. Local Data Management
**Purpose**: Manage cached data and storage

**Options:**
- **Clear Cache**: Remove cached video details
- **Clear History**: Delete watch history
- **Clear Downloads**: Remove download list
- **Clear All Data**: Reset everything

**How to Use:**
1. Click settings gear ⚙️
2. Scroll to "Local data management"
3. Click desired clear option
4. Confirm the action
5. Data is immediately cleared

### 5. App Information
**Purpose**: View app details and version

**Information Displayed:**
- **App Version**: Current version number
- **API Quota**: Current usage and limits
- **Storage Used**: Browser storage statistics
- **Last Sync**: When channels were last synced

---

## Troubleshooting

### 1. Common Issues

#### Error 153 (YouTube Embed Blocked)
**Problem**: Videos won't play, showing "Error 153"

**Cause**: Opening HTML file directly sends no referrer header

**Solution**:
- Use the local server: `node serve.js`
- Open `http://127.0.0.1:8087/`
- For GitHub Pages, the error shouldn't occur

#### API Quota Exceeded
**Problem**: Search and sync stop working

**Symptoms**:
- "Daily YouTube API quota exceeded" message
- Search returns no results
- Sync fails to load videos

**Solutions**:
1. **Wait**: Quota resets at midnight PST
2. **Reduce Usage**: Decrease sync frequency
3. **Add Your Own Key**: Use custom API key
4. **Use Cached Data**: App works with existing data

#### Videos Not Loading
**Problem**: Thumbnails and video details don't appear

**Solutions**:
1. **Check Internet**: Ensure connection to YouTube
2. **Clear Cache**: In settings → "Clear caches"
3. **Try Different Channels**: Some channels may be restricted
4. **Add Your Own Key**: May resolve access issues

#### Sync Not Working
**Problem**: Channel sync fails to load videos

**Solutions**:
1. **Check Channel Names**: Verify spelling and format
2. **Internet Connection**: Ensure YouTube access
3. **API Quota**: May be exceeded
4. **Try Different Channels**: Some channels may have restricted access

### 2. Performance Issues

#### Slow Loading
**Solutions**:
1. **Clear Browser Cache**: Settings → "Clear caches"
2. **Reduce Sync Frequency**: Increase interval time
3. **Use Your Own API Key**: May improve performance
4. **Close Unused Tabs**: Free up browser resources

#### High Memory Usage
**Solutions**:
1. **Clear History**: Reduces stored data
2. **Clear Downloads**: Removes saved metadata
3. **Close Browser Tabs**: Especially with many videos open
4. **Restart Browser**: Clears memory

### 3. Mobile Issues

#### Touch Problems
**Solutions**:
1. **Zoom Out**: If buttons are too small
2. **Use Desktop Mode**: Some mobile browsers
3. **Update Browser**: Ensure latest version
4. **Clear Cache**: May resolve touch issues

#### Battery Usage
**Solutions**:
1. **Close When Not in Use**: Background tabs use battery
2. **Disable Auto-sync**: Reduces background activity
3. **Use WiFi**: More efficient than mobile data

---

## Mobile Usage

### 1. Mobile Browser Access
**Compatible Browsers**:
- Safari (iOS)
- Chrome (Android/iOS)
- Firefox (Android/iOS)
- Edge (Android/iOS)

**Mobile Features**:
- **Responsive Design**: Adapts to screen size
- **Touch Navigation**: Optimized for touch interactions
- **PWA Support**: Can be added to home screen
- **Offline Access**: Works with cached data

### 2. Mobile Setup
**Step-by-Step**:
1. Open the URL in mobile browser
2. Tap menu icon ⋮ or •••
3. Select "Add to Home Screen" (PWA)
4. App icon appears on home screen
5. Tap to launch like a native app

### 3. Mobile Tips
**Optimization**:
- **Use WiFi**: Reduces data usage
- **Enable PWA**: Better mobile experience
- **Clear Cache**: If performance issues
- **Close App**: When not in use to save battery

**Navigation**:
- **Swipe Gestures**: Some browsers support swipe navigation
- **Touch Target**: Larger touch targets on mobile
- **Zoom**: Pinch to zoom for better viewing

---

## Power User Tips

### 1. Advanced Sync Configuration
**Optimizing Sync**:
```javascript
// In browser console for advanced users
// Set custom sync interval (30 minutes)
localStorage.setItem('hmhs_sync_interval', '1800000');

// Set max videos per channel (1000)
localStorage.setItem('hmhs_max_videos', '1000');
```

### 2. Bulk Channel Management
**Adding Multiple Channels**:
```
// Example of efficient channel list
TechChannels: "Linus Tech Tips, Marques Brownlee, MKBHD, Unbox Therapy, Austin Evans"
Educational: "Khan Academy, CrashCourse, TED-Ed, Veritasium, Vsauce"
News: "BBC News, CNN, Reuters, Associated Press, The New York Times"
```

### 3. Search Optimization
**Effective Search Queries**:
- **Specific**: `"how to build a pc" vs "pc building"`
- **Channel Specific**: `"site:youtube.com/channel/UCX6OQ3DkcsbYNE6H8uQQuVA review"`
- **Date Specific**: `"javascript tutorial 2023"` for recent content
- **Quality Filters**: `"4k tutorial", "hd walkthrough"`

### 4. Keyboard Shortcuts
**Navigation**:
- `/` - Focus search bar
- `Escape` - Close modal/overlay
- `Arrow keys` - Navigate between videos
- `Enter` - Select video
- `Space` - Play/pause video

**Power User Shortcuts**:
```javascript
// In browser console for quick access
// Jump to downloads
document.querySelector('[data-view="downloads"]').click();

// Quick sync
syncAll(true);

// Clear all data
if (confirm('Clear all data?')) {
  localStorage.clear();
  location.reload();
}
```

### 5. Custom Styling
**Theme Customization**:
```css
/* In browser console for custom themes */
document.documentElement.style.setProperty('--bg', '#000000');
document.documentElement.style.setProperty('--txt', '#ffffff');
document.documentElement.style.setProperty('--red', '#00ff00');
```

### 6. API Key Management
**Key Rotation**:
```javascript
// Rotate API keys if needed
const keys = ['key1', 'key2', 'key3'];
let currentKey = 0;

function getNextKey() {
  currentKey = (currentKey + 1) % keys.length;
  return keys[currentKey];
}

// Set new key
localStorage.setItem('hmhs_yt_key', getNextKey());
```

### 7. Data Export/Import
**Backup Your Data**:
```javascript
// Export data
const backup = {
  history: JSON.parse(localStorage.getItem('hmhs_history') || '[]'),
  liked: JSON.parse(localStorage.getItem('hmhs_liked') || '{}'),
  bookmarks: JSON.parse(localStorage.getItem('hmhs_bookmarks') || '{}'),
  downloads: JSON.parse(localStorage.getItem('hmhs_downloads') || '[]'),
  channels: JSON.parse(localStorage.getItem('hmhs_sync_channels') || '[]')
};
console.log('Backup:', JSON.stringify(backup, null, 2));

// Import data
localStorage.setItem('hmhs_history', JSON.stringify(backup.history));
localStorage.setItem('hmhs_liked', JSON.stringify(backup.liked));
// ... and so on for other data
```

### 8. Performance Monitoring
**Check Performance**:
```javascript
// Monitor app performance
console.log('Storage used:', JSON.stringify(localStorage).length / 1024 / 1024, 'MB');
console.log('API quota left:', 10000 - getQuota().used);
console.log('Videos in index:', Object.keys(INDEX.videos).length);
console.log('Synced videos:', lsGet('hmhs_synced_videos', []).length);
```

### 9. Offline Mode
**Prepare for Offline Use**:
1. Sync your favorite channels
2. Download videos you want to watch
3. Clear search history to reduce API calls
4. Use cached data when possible

### 10. Integration Tips
**Browser Integration**:
- **Bookmarklet**: Create bookmarklet for quick search
- **Custom Search**: Add hmhstube as search engine
- **PWA**: Install for app-like experience
- **Notifications**: Enable for sync updates

---

## Conclusion

This user guide covers all aspects of using hmhstube effectively. From basic navigation to advanced power user features, you now have comprehensive knowledge to make the most of your YouTube experience in a single HTML file.

**Remember**: 
- The public API key is safe to use with a 10,000 unit daily quota
- For heavy usage, add your own API key
- The app works offline after initial sync
- All data is stored locally in your browser

**Happy Browsing!** 🎉

---

*Need more help? Check the other documentation files:*
- [README.md](README.md) - Overview and features
- [API_KEY.md](API_KEY.md) - API key information
- [INSTALL.md](INSTALL.md) - Installation guide
- [CHANGELOG.md](CHANGELOG.md) - Version history