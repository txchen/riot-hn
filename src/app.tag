<app>
  <div id="header">
    <a id="yc" href="http://www.ycombinator.com">
      <img src="https://news.ycombinator.com/y18.gif">
    </a>
    <h1><a href="#">Hacker News</a></h1>
    <span class="source">
      Built with <a href="https://muut.com/riotjs/" target="_blank">Riot.js</a> |
      <a href="https://github.com/txchen/riot-hn" target="_blank">Source</a>
    </span>
  </div>
  <div id="placeholder"></div>

  <script>
  var self = this

  loadView(viewName, id) {
    var oldEl = document.getElementById('hnview')
    if (oldEl) {
      oldEl.remove()
    }
    var ph = document.getElementById('placeholder');
    ph.insertAdjacentHTML('afterend', '<div id="hnview"></div>');
    self.currentview = viewName + id
    riot.mountTo(document.getElementById('hnview'), viewName, id)
    self.update()
  }

  studyRoute(view, id) {
    switch(view) {
    case 'user':
      require('./views/user-view.tag')
      self.loadView('user-view', id)
      break
    case 'item':
      require('./views/item-view.tag')
      self.loadView('item-view', id)
      break
    case 'news':
      require('./views/news-view.tag')
      self.loadView('news-view', id)
      break
    default:
      riot.route('news/1')
    }
  }
  riot.route(self.studyRoute)
  this.on('mount', function() {
    riot.route.exec(self.studyRoute)
  })
  </script>
</app>
