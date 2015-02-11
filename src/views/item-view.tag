<item-view>
  <div class="view item-view" show={ item }>
    <item class="item" if={ item } data={ item }></item>
    <ul class="poll-options" if={ pollOptions }>
      <li each={ pollOptions }>
        <p>{ text }</p>
        <p class="subtext">{ score } points</p>
      </li>
    </ul>
    <ul class="comments" if={ comments }>
      <comment each={ comments } data={ this }></comment>
    </ul>
    <p show={ !comments.length }>No comments yet.</p>
  </div>

  <script>
  var store = require('../store')
  var self = this
  self.item = null

  fetchComments() {
    store.fetchItems(self.item.kids, function (comments) {
      self.comments = comments
      self.update()
    })
  }

  fetchPollOptions() {
    store.fetchItems(self.item.parts, function (options) {
      self.pollOptions = options
      self.update()
    })
  }

  self.on('mount', function() {
    store.fetchItem(opts, function (item) {
      self.item = item
      self.fetchComments()
      if (item.type === 'poll') {
        self.fetchPollOptions()
      }
      self.update()
    })
  })
  </script>
</item-view>
