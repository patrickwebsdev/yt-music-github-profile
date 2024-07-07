<svg width="400" height="150" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
  aria-labelledby="yt-music" role="img">
  <title id="yt-music">{{title_text}} on YT Music</title>
  <defs>
    <linearGradient id="gradient1" gradientTransform="rotate(21)">
      <stop offset="0%" stop-color="{{gradient}}"></stop>
      <stop offset="75%" stop-color="#020202"></stop>

    </linearGradient>
  </defs>
  <rect width="100%" height="100%" rx="5" fill="url(#gradient1)"></rect>
  <foreignObject width="400" height="150">
    <style>
      div {
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji';
      }

      .cover {
        overflow: hidden;
        border-radius: 5px;
        background-color: #020202;
        position: relative;
        display: flex;
      }

      .cover span {
        width: 100%;
        height: 100%;
        background-color: #FF0000;
        content: '';
        animation: animated_bar 0ms -800ms linear infinite alternate;
        transform-origin: bottom;
      }

      .cover span:nth-of-type(1) {
        animation-duration: 354ms;
      }

      .cover span:nth-of-type(2) {
        animation-duration: 429ms;
      }

      .cover span:nth-of-type(3) {
        animation-duration: 377ms;
      }

      .cover span:nth-of-type(4) {
        animation-duration: 438ms;
      }

      .cover span:nth-of-type(5) {
        animation-duration: 391ms;
      }

      .cover span:nth-of-type(6) {
        animation-duration: 455ms;
      }

      .cover span:nth-of-type(7) {
        animation-duration: 401ms;
      }

      .cover span:nth-of-type(8) {
        animation-duration: 473ms;
      }

      .container {
        border-radius: 5px;
        padding: 10px;
        display: flex;
        flex-direction: row;
        gap: 10px;
      }

      .text {
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 250px;
      }

      .playing {
        display: flex;
        justify-content: flex-start;
        align-items: center;
        color: #FF0000;
        font-weight: bold;
      }

      .not-play {
        color: #FF0000;
        text-align: center;
        margin: 0;
      }

      .artist {
        color: #fff;
        font-weight: bold;
        font-size: 1.25rem;
        padding-bottom: 0.5rem;
        padding-right: 1.25rem;
        display: inline-block;
      }

      .song-container,
      .artist-container {
        overflow: hidden;
        white-space: nowrap;
        margin-right: 1rem;
      }

      .song {
        color: #b3b3b3;
        font-size: 1rem;
        display: inline-block;
        padding-right: 1.25rem;
      }

      .logo {
        margin-left: 8px;
        width: 35px;
        height: 35px;
      }

      @keyframes song {
        0% {
          transform: translateX(0);
        }

        100% {
          transform: translateX(-100%);
        }
      }

      @keyframes animated_bar {
        0% {
          transform: scaleY(0.3);
          opacity: 0.3;
        }

        100% {
          transform: scaleY(0.75);
          opacity: 1;
        }
      }

      .cover:not(.image) {
        padding: 1rem;
        gap: 0.25rem;
        width: calc(130px - 2rem);
        height: calc(130px - 2rem);
        justify-content: space-between;
        align-items: flex-start;
      }

      .cover:not(.image) img {
        display: none;
      }

      .cover:not(.bars) {
        width: 130px;
        height: 130px;
        justify-content: center;
        align-items: center;
      }

      .cover:not(.bars) span {
        display: none;
      }

      .song-container:not(.song-animate) .song:nth-child(1),
      .song-container:not(.song-animate) .song:nth-child(2),
      .artist-container:not(.artist-animate) .artist:nth-child(1),
      .artist-container:not(.artist-animate) .artist:nth-child(2) {
        display: none;
      }

      .song-animate .song,
      .artist-animate .artist {
        animation: song 10s infinite linear;
      }

      .song:empty,
      .artist:empty {
        display: none;
      }
    </style>
    <div xmlns="http://www.w3.org/1999/xhtml" class="container">
      <div class="cover{{cover_type}}">
        <img src="data:image/png;base64, {{img}}" width="130" height="130" class="image" />
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="text">
        <div class="playing">
          {{title_text}} on <g class="logo"><svg xmlns:x="http://ns.adobe.com/Extensibility/1.0/"
              xmlns:i="http://ns.adobe.com/AdobeIllustrator/10.0/" xmlns:graph="http://ns.adobe.com/Graphs/1.0/"
              xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1"
              x="0px" y="0px" viewBox="0 0 176 176" enable-background="new 0 0 176 176" xml:space="preserve">
              <metadata>
                <sfw xmlns="http://ns.adobe.com/SaveForWeb/1.0/">
                  <slices />
                  <sliceSourceBounds bottomLeftOrigin="true" height="176" width="176" x="8" y="-184" />
                </sfw>
              </metadata>
              <g id="XMLID_167_">
                <circle id="XMLID_791_" fill="#FF0000" cx="88" cy="88" r="88" />
                <path id="XMLID_42_" fill="#FFFFFF"
                  d="M88,46c23.1,0,42,18.8,42,42s-18.8,42-42,42s-42-18.8-42-42S64.9,46,88,46 M88,42   c-25.4,0-46,20.6-46,46s20.6,46,46,46s46-20.6,46-46S113.4,42,88,42L88,42z" />
                <polygon id="XMLID_274_" fill="#FFFFFF" points="72,111 111,87 72,65  " />
              </g>
            </svg></g>
        </div>
        <div class="artist-container{{artist_animate}}">
          <div class="artist">{{artist_name}}</div>
          <div class="artist" aria-hidden="true">{{artist_name}}</div>
          <div class="artist" aria-hidden="true">{{artist_name}}</div>
        </div>
        <div class="song-container{{song_animate}}">
          <div class="song">{{song_name}}</div>
          <div class="song" aria-hidden="true">{{song_name}}</div>
          <div class="song" aria-hidden="true">{{song_name}}</div>
        </div>
      </div>
    </div>
  </foreignObject>
</svg>