$content = Get-Content -Path 'youtube-full-sync.html' -Raw

$old1 = '.download-btn{position:absolute;right:8px;bottom:8px;background:rgba(0,0,0,.8);color:#fff;border:none;border-radius:50%;width:32px;height:32px;cursor:pointer;display:flex;align-items:center;justify-content:center;opacity:0;transition:opacity .15s;box-shadow:0 2px 8px rgba(0,0,0,.5)}'
$new1 = '.download-btn{position:absolute;right:8px;bottom:8px;background:var(--red);color:#fff;border:none;border-radius:50%;width:36px;height:36px;cursor:pointer;display:flex;align-items:center;justify-content:center;opacity:1;transition:all .15s;box-shadow:0 2px 8px rgba(0,0,0,.5);z-index:10}'
$content = $content.Replace($old1, $new1)

$old2 = '.vcard:hover .download-btn{opacity:1}'
$content = $content.Replace($old2, '')

$old3 = '.download-btn:hover{background:var(--red);transform:scale(1.1)}'
$new3 = '.download-btn:hover{background:var(--red2);transform:scale(1.1)}'
$content = $content.Replace($old3, $new3)

$old4 = '.download-btn i{font-size:14px}'
$new4 = ".download-btn i{font-size:16px}`n.download-btn.downloading{background:#4CAF50;animation:downloadPulse 1.5s infinite}`n.download-btn.downloaded{background:#4CAF50}"
$content = $content.Replace($old4, $new4)

Set-Content -Path 'youtube-full-sync.html' -Value $content
Write-Host 'Updated download button styling'
