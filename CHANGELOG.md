# Changelog

All notable changes to hmhstube will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Public API key integration for safe public use
- Comprehensive documentation (README.md, API_KEY.md, INSTALL.md)
- GitHub Pages setup scripts and guides
- Landing page for GitHub Pages deployment
- Download functionality with persistent storage
- Context menu for download management
- Improved error handling for API limits
- Responsive design for all devices
- Dark theme matching YouTube's design

### Changed
- Updated router to include downloads view
- Fixed downloads view routing issue
- Improved recommendation algorithm
- Enhanced channel page functionality
- Better error messages and user feedback
- Optimized performance and caching

### Fixed
- Error 153 fix with proper HTTP serving
- Chipbar layout overlapping content
- Video metadata loading issues
- Local library resolution problems
- Comment labeling for local storage
- Player error handling (101, 150, 153)

## [1.0.0] - 2023-11-22

### Added
- Initial release of hmhstube
- Complete YouTube-like platform in single HTML file
- A-Z video browsing functionality
- Channel sync with automatic updates
- YouTube search integration
- Personalized home feed
- Watch history tracking
- Like and bookmark functionality
- Video progress tracking
- Responsive design
- Local storage for user data
- Error handling for network issues
- Local development server (serve.js)
- Windows launchers (.bat files)

### Technical Features
- YouTube Data API v3 integration
- YouTube iframe embed with Error 153 fix
- Hash-based routing
- Caching system for performance
- Quota management for API limits
- Offline capability with cached data

### UI/UX
- Modern YouTube-inspired design
- Dark theme with proper contrast
- Intuitive navigation
- Video cards with thumbnails
- Sidebar with quick access
- Settings modal for configuration
- Toast notifications for user feedback
- Loading indicators
- Empty states with helpful messages

### File Structure
- `index.html` - Main application (130KB)
- `serve.js` - Local development server
- `launch-page.bat` - Windows launcher
- `run-youtube-full-sync.bat` - Main launcher
- `README.md` - Documentation
- `LICENSE` - MIT license
- `404.html` - Custom error page
- `.nojekyll` - GitHub Pages configuration

## [0.9.0] - 2023-11-21 (Beta)

### Added
- Basic YouTube browsing functionality
- Simple search feature
- Channel list display
- Video player integration
- Basic UI components
- Local storage for preferences

### Technical
- Initial HTML structure
- Basic CSS styling
- JavaScript for basic interactions
- YouTube embed integration

---

## Versioning Notes

- **v1.0.0**: Stable release with all core features
- **Future versions**: Will focus on performance improvements, new features, and bug fixes

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Support

For support, please check [README.md](README.md), [API_KEY.md](API_KEY.md), and [INSTALL.md](INSTALL.md),
or create an issue in the GitHub repository.

---

*This changelog follows the principles of Keep a Changelog and Semantic Versioning.*