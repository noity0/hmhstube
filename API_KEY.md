# YouTube API Key Information

## Public API Key (Included)

```
AIzaSyDOmicLYutMLwTIkz4nkLei4_r3J-m8IhM
```

### Key Details
- **Type**: YouTube Data API v3
- **Quota**: 10,000 units per day
- **Status**: Active and safe for public use
- **Purpose**: Used by hmhstube for video search, details, and channel data

### Safety Information
✅ **Safe for Public Use**
- No sensitive data is sent with API requests
- Only public YouTube data is accessed
- No authentication or user data is transmitted
- Rate limiting prevents abuse

### API Usage Breakdown
| Operation | Units Used | Daily Limit |
|-----------|------------|-------------|
| Video Search | 100 per request | 100 searches |
| Video Details | 1 per video | 10,000 videos |
| Channel Details | 1 per channel | 10,000 channels |
| Playlist Items | 1 per page | 10,000 items |

### Quota Management
- **Reset Time**: Daily at midnight Pacific Time
- **Warning**: Shown at 90% quota (9,000 units)
- **Graceful Degradation**: App continues with cached data
- **Offline Mode**: Works without API after initial sync

### Adding Your Own API Key

For higher limits or commercial use:

1. **Create at Google Cloud Console**
   - Go to: https://console.cloud.google.com/
   - Create a new project
   - Enable "YouTube Data API v3"
   - Create an API key

2. **Use in hmhstube**
   - Method 1: Replace in code (find `AIzaSyDOmicLYutMLwTIkz4nkLei4_r3J-m8IhM`)
   - Method 2: Set in browser localStorage:
     ```javascript
     localStorage.setItem('hmhs_yt_key', 'YOUR_API_KEY_HERE');
     ```

3. **Benefits**
   - Higher quota (negotiable with Google)
   - No shared limits
   - Better reliability
   - Commercial use allowed

### Security Best Practices
- 🔒 **Restrict API Key**: In Google Cloud Console, restrict to YouTube Data API v3
- 🌐 **Referrer Restrictions**: Add your domain(s) for additional security
- 📊 **Monitor Usage**: Check usage in Google Cloud Console
- 🔄 **Rotate Keys**: Periodically regenerate keys for security

### Troubleshooting
- **Quota Exceeded**: Wait for reset or add your own key
- **Invalid Key**: Check key in Google Cloud Console
- **Disabled Key**: Create a new key in Google Cloud Console

---

*Note: This API key is provided for use with hmhstube only. Please respect YouTube's Terms of Service and API Terms of Service.*