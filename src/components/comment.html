<comment>
  <li show={ data.text }>
    <div class="comhead">
      <a class="toggle" onclick={ toggle }>{ open ? '[-]' : '[+]' }</a>
      <a href="#user/{ data.by }">{ data.by }</a>
      { filters.fromNow(data.time) } ago
    </div>
    <div class="comment-content" name="commentcontent" show={ open }></div>
    <ul class="child-comments" if={ data.kids } show={ open }>
      <comment each={ comments } data={ this }></comment>
    </ul>
  </li>

  <script>
  var store = require('../store')
  var self = this
  self.data = opts.data
  self.open = true

  this.on('mount', function() {
    store.fetchItems(self.data.kids, function(comments) {
      self.comments = comments
      self.update()
    })
    self.commentcontent.innerHTML = self.data.text
  })

  toggle(e) {
    this.open = !this.open
  }
  </script>
</comment>
