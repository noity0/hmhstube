#!/usr/bin/env node
/*
 * hmhstube local server
 * ---------------------
 * YouTube embeds (Error 153) require an http(s) origin and a Referer header.
 * Opening the HTML file with file:// cannot provide either, so this tiny
 * zero-dependency server hosts the app on http://127.0.0.1 and sends the
 * Referrer-Policy YouTube recommends.
 *
 * Usage:  node serve.js [page.html] [--no-open]
 */
const http = require('http');
const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

const ROOT = __dirname;
const START_PORT = Number(process.env.PORT) || 8087;
const args = process.argv.slice(2).filter(a => !a.startsWith('--'));
const PAGE = args[0] || 'youtube-full-sync.html';
const NO_OPEN = process.argv.includes('--no-open');

const MIME = {
  '.html': 'text/html; charset=utf-8',
  '.htm': 'text/html; charset=utf-8',
  '.css': 'text/css; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.mjs': 'text/javascript; charset=utf-8',
  '.json': 'application/json; charset=utf-8',
  '.svg': 'image/svg+xml',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.gif': 'image/gif',
  '.webp': 'image/webp',
  '.ico': 'image/x-icon',
  '.woff': 'font/woff',
  '.woff2': 'font/woff2',
  '.ttf': 'font/ttf',
  '.mp4': 'video/mp4',
  '.webm': 'video/webm',
  '.map': 'application/json; charset=utf-8',
  '.txt': 'text/plain; charset=utf-8',
  '.md': 'text/plain; charset=utf-8'
};

const COMMON_HEADERS = {
  'Referrer-Policy': 'strict-origin-when-cross-origin',
  'X-Content-Type-Options': 'nosniff',
  'Cache-Control': 'no-store',
  'Access-Control-Allow-Origin': '*'
};

function send(res, status, text, extra) {
  res.writeHead(status, Object.assign({}, COMMON_HEADERS, {
    'Content-Type': 'text/plain; charset=utf-8'
  }, extra || {}));
  res.end(text);
}

function handler(req, res) {
  let url;
  try { url = new URL(req.url, 'http://127.0.0.1'); }
  catch { return send(res, 400, 'Bad request'); }

  // Used by the file:// build to discover a running server.
  if (url.pathname === '/__hmhs_ping') {
    res.writeHead(200, Object.assign({}, COMMON_HEADERS, {
      'Content-Type': 'application/json; charset=utf-8',
      'Access-Control-Allow-Methods': 'GET, OPTIONS',
      'Access-Control-Allow-Headers': '*'
    }));
    return res.end(JSON.stringify({ ok: true, app: 'hmhstube', page: PAGE }));
  }
  if (req.method === 'OPTIONS') {
    res.writeHead(204, Object.assign({}, COMMON_HEADERS, {
      'Access-Control-Allow-Methods': 'GET, OPTIONS',
      'Access-Control-Allow-Headers': '*'
    }));
    return res.end();
  }
  if (req.method !== 'GET' && req.method !== 'HEAD') {
    return send(res, 405, 'Method not allowed');
  }

  let pathname;
  try { pathname = decodeURIComponent(url.pathname); }
  catch { return send(res, 400, 'Bad path'); }

  if (pathname === '/' || pathname === '') pathname = '/' + PAGE;

  // Resolve inside ROOT only (blocks ../ traversal).
  const filePath = path.resolve(ROOT, '.' + pathname);
  if (filePath !== ROOT && !filePath.startsWith(ROOT + path.sep)) {
    return send(res, 403, 'Forbidden');
  }

  fs.stat(filePath, (err, stat) => {
    if (err || !stat.isFile()) return send(res, 404, 'Not found: ' + pathname);
    const ext = path.extname(filePath).toLowerCase();
    res.writeHead(200, Object.assign({}, COMMON_HEADERS, {
      'Content-Type': MIME[ext] || 'application/octet-stream',
      'Content-Length': stat.size
    }));
    if (req.method === 'HEAD') return res.end();
    fs.createReadStream(filePath).on('error', () => res.destroy()).pipe(res);
  });
}

function openBrowser(url) {
  if (NO_OPEN) return;
  const cmd = process.platform === 'win32'
    ? `start "" "${url}"`
    : process.platform === 'darwin'
      ? `open "${url}"`
      : `xdg-open "${url}"`;
  exec(cmd, err => {
    if (err) console.log('Open this URL manually: ' + url);
  });
}

function start(port, attempt) {
  attempt = attempt || 0;
  const server = http.createServer(handler);
  server.once('error', err => {
    if (err.code === 'EADDRINUSE' && attempt < 10) {
      console.log(`Port ${port} is busy, trying ${port + 1}...`);
      start(port + 1, attempt + 1);
      return;
    }
    console.error('Server error:', err.message);
    process.exit(1);
  });
  server.listen(port, '127.0.0.1', () => {
    const url = `http://127.0.0.1:${port}/${PAGE}`;
    console.log('');
    console.log('  hmhstube is running');
    console.log('  ' + url);
    console.log('');
    console.log('  Referrer-Policy: strict-origin-when-cross-origin');
    console.log('  Keep this window open while you use the app.');
    console.log('  Press Ctrl+C to stop.');
    console.log('');
    openBrowser(url);
  });
}

start(START_PORT);
