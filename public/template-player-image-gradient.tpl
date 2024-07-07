<svg width="400" height="150" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" role="img">
  <defs>
    <linearGradient id="gradient1" gradientTransform="rotate(21)">
      <stop offset="0%" stop-color="{{gradient}}"></stop>
      <stop offset="65%" stop-color="#020202"></stop>
    </linearGradient>
  </defs>
  <rect width="100%" height="100%" rx="5" fill="url(#gradient1)"></rect>
  <foreignObject width="400" height="150">
    <style>
      div {
        font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji;
      }

      .container {
        border-radius: 5px;
        padding: 10px 10px;
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
      }

      .song-container {
        overflow: hidden;
        white-space: nowrap;
        margin-right: 1rem;
      }
      .song-container:not(.song-animate) .song:nth-child(1) {
        display: none;
      }
      .song-container:not(.song-animate) .song:nth-child(2) {
        display: none;
      }
      .song-animate .song {
        animation: song 10s infinite linear;
      }

      .song {
        color: #b3b3b3;
        font-size: 1rem;
        display: inline-block;
        padding-right: 1.25rem;
      }

      .logo {
        margin-left: 5px;
      }

      .cover {
        border-radius: 5px;

      }

      @keyframes song {
        0% {
          transform: translateX(0);
        }

        100% {
          transform: translateX(-100%);
        }
      }
    </style>
    <div xmlns="http://www.w3.org/1999/xhtml" class="container">
      <img src="data:image/png;base64, {{img}}" width="130" height="130" class="cover" />
      <div class="text">
        <div class="playing">
          Now playing on <img class="logo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAjCAMAAAApB0NrAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAfhQTFRFAAAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wAA/wEB/w8P/xwc/yEh/xcX/wgI/wAA/wAA/xER/05O/5yc/8bG/8fH/8jI/7+//319/ykp/wQE/wAA/wAA/wAA/zw8/8TE/8vL/4CA/z4+/ysr/yYm/zIy/1BQ/6Gh/9DQ/5qa/xYW/wAA/wAA/wAA/yAg/9ra/6mp/yUl/2tr/97e/5mZ/wIC/4KC/xMT/87O/4qK/wAA/wAA/xAQ/y0t/xsb/+zs/3p6/wAA/8rK/7q6/5+f/yws/wAA/7u7//39/+fn/35+/yMj/0VF/wAA/////9PT/3x8/xkZ/5WV/wAA/wAA//v7/6am/yIi/3Z2/wAA/wAA/6Sk/6Oj/wAA/9LS/0tL/4+P/wAA/wAA/zMz/wMD/6qq/2pq/wAA/wAA/+vr/6ys/zAw/wAA/wAA/9HR/3Fx/zc3/wYG/8LC/1FR/+np/0lJ/wAA/xUV/+/v/0JC/wAA/39//wAA/8/P/wAA/46O/zEx/wAA/wAA/wAA/wAA/wAAGvOl/wAAAKh0Uk5TAAciPGR8hHJUMRIBBB5sv+L4//7w0KZLDCOT3frAZTLS+ZsLW/XDH/3fG////////7UD//////////////xdBv/////////////////lRd7////////////////mJ///////aP////+l////////yf//////3B3/////5CX//+f////hIf/////WF////70F//////////9M////FP9u/5z//+0rnQK8FBXcMAAAAplJREFUeJyFlFtIVFEUhtc/cy46ZzxHE7zWDKmkjRBmUGBUIFhQGZTUQNqLGRnRgwQaNORDRiFBWT3YQ/Rg+dJLSARlF8MysAsJJRmMUEZesEJpygYvnbXPmdEZB9oP5/x7rW/2+fdaew/o/wMxk8URSsi4rWQUHVvOZAN/lvzWBYTH4hgvpuNcGEAwhinA9+VW0zG0hCmQJhJtKBODUcarRFbJFna/RCAv3tpMtmp7Wc3AgoOfYgEqBp4Jxq3PWMi6JfVBnwhtRpdgUsp7xXyrmfk4yspTYMpuEUwdDzGjS9YqaerDqNsdwMA3FjvRYTLQnTzZPZLWQ1QZtIzQHuCuEHtvmIxDd7DOK/n5lKgKuGNB6zOnhaUD7Sbj1MXeXPqY6cVvGuktYivV/ZtuMXPoXhAk6SxzXDqXwq+Klt40Ze1MJycOoxUkp7DMdelvbIZU4DpR/cBLThxDC0hxs1yZlPo6wlA4faSLyn3XWJ8Y7gCpGstVycarCJOKQdPRdt9lTjQgAErSFrhsyUa/xUyFfbhI5NuFVmaa0AhK1uZZFxmjZiv9efjbKWpdM7nhHL8DaAC5tDnWa/c/f0LUDDSL8njqvuYK9Sts1kfTZln7DJf0gCq67WacBU6LzlfXc78y5d88O/9YUrpswnNExiOB64E6ZrJk66JUSCUr3t3mJUvXOOQmEctorLXOmMc5JQI5G2eCW5RPUrhyyNtjfTTwo8Visi6cXLC+UZY3P1GUP5ozZRmnNhwN2ec53zlJCcesOMTWvSh0jCdCruLgIkM+1f0hnmg73i6Q6D0tdRsvYoiM5rkaW0bv+zbjfdn9KFE8cmb4UiieIdL2KbKqKJKkyKeuSHWLiZj/H3OHVcrnQkVuiAnGMQnHP3jxmSQo00Z6AAAAAElFTkSuQmCC" />
        </div>
        <div class="artist">{{artist_name}}</div>
        <div class="song-container{{song_animate}}">
          <div class="song">{{song_name}}</div>
          <div class="song" aria-hidden="true">{{song_name}}</div>
          <div class="song" aria-hidden="true">{{song_name}}</div>
        </div>
      </div>
    </div>
  </foreignObject>
</svg>