<news-view>
  <div class="view news-view" class={loading: !items.length}>
    <ul>
      <li class="item" each={ item, i in items } track-by="id">
        <item data={ item } index={ (parent.page - 1) * 30 + i + 1} ></item>
      </li>
    </ul>
    <div class="nav" show={ items.length }>
      <a if={ opts > 1 } href="#news/{ opts - 1 }">&lt; prev</a>
      <a if={ opts < 4 } href="#news/{ opts - -1 }">more...</a>
    </div>
  </div>
  <script>
  require('../components/item.tag')
  var store = require('../store')
  var self = this
  self.page = opts
  self.items = []

  fetchNews() {
    store.fetchItemsByPage(self.page, function (items) {
      self.items = items
      self.displayPage = self.page
      self.update()
    })
  }

  self.on('mount', function() {
    self.fetchNews()
    store.on('update', self.fetchNews)
  })

  self.on('unmount', function() {
    store.removeListener('update', self.fetchNews)
  })
  </script>
</news-view>
