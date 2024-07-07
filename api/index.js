require('dotenv').config();
const express = require('express');
const axios = require('axios');
const fs = require('fs').promises;
const path = require('path');
const Vibrant = require('node-vibrant');


const app = express();
const port = process.env.PORT || 4000;

let globalCache = {
  data: null,
  timestamp: 0
};

function escapeXml(unsafe) {
  return unsafe.replace(/[<>&'"]/g, function (c) {
    switch (c) {
      case '<': return '&lt;';
      case '>': return '&gt;';
      case '&': return '&amp;';
      case '\'': return '&apos;';
      case '"': return '&quot;';
    }
  });
}

async function getLastFmData() {
  const url = `http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=${process.env.LAST_FM_USERNAME}&api_key=${process.env.LAST_FM_API_KEY}&format=json&limit=1`;
  const response = await axios.get(url);
  return response.data;
}

async function getImageB64AndColor(url) {
  try {
    const response = await axios.get(url, { responseType: 'arraybuffer' });
    const buffer = Buffer.from(response.data, 'binary');
    const thumbnail = buffer.toString('base64');
    const vibrant = await Vibrant.from(buffer)
      .quality(100).getPalette();
    const { hex: color } = vibrant.Vibrant;
    return { thumbnail, color };
  } catch (error) {
    console.error('Error:', error);
    return { thumbnail: null, color: "#121212" };
  }
}
async function getSVG(title = '', artist = '', song = '', image = '', color = '#121212') {
  let template;
  if (artist === '' && song === '') {
    template = await fs.readFile(path.join(process.cwd(), 'public', 'template-player-nothing.tpl'), 'utf-8');
  }
  else if (image !== null) {
    template = await fs.readFile(path.join(process.cwd(), 'public', 'template-player-image-gradient.tpl'), 'utf-8');
  }
  else if (image === null) {
    template = await fs.readFile(path.join(process.cwd(), 'public', 'template-player.tpl'), 'utf-8');
  }
  template = template
    .replaceAll('{{title_text}}', title)
    .replaceAll('{{artist_name}}', escapeXml(artist))
    .replaceAll('{{song_name}}', escapeXml(song))
    .replaceAll('{{img}}', image)
    .replaceAll('{{gradient}}', color)
    .replaceAll('{{song_animate}}', song.length > 25 ? " song-animate" : "");
  return template;
}

app.get('/', async (req, res) => {
  try {
    let data;
    if (globalCache.data && (Date.now() - globalCache.timestamp) < 5000) {
      data = globalCache.data;
      console.log('Usando datos del caché global');
    } else {
      data = await getLastFmData();
      globalCache = {
        data: data,
        timestamp: Date.now()
      };
      console.log('Obteniendo nuevos datos de Last.fm y actualizando caché global');
    }
    if (data.recenttracks && data.recenttracks.track && data.recenttracks.track.length > 0) {
      const track = data.recenttracks.track[0];
      const title = track['@attr'] && track['@attr'].nowplaying === 'true' ? 'Now playing' : 'Recently played'
      const artist = track.artist['#text'];
      const song = track.name;
      const { thumbnail, color } = await getImageB64AndColor(track.image.find(img => img.size === 'extralarge')['#text'] || null);
      res.set('Content-Type', 'image/svg+xml');
      return res.send(await getSVG(title, artist, song, thumbnail, color));
    }
    else {
      song_animate
      res.set('Content-Type', 'image/svg+xml');
      return res.send(await getSVG());
    }
  }
  catch (error) {
    return res.status(500).json({
      error: 'Error al obtener la información: ' + error.message
    });
  }
})

app.listen(port, () => console.log(`Server ready on port ${port}.`));

module.exports = app;