<item>
  <span class="index">{ opts.index }.</span>
  <p>
    <a class="title" href="{ href() }" target="_blank">{ itemdata.title }</a>
    <span class="domain" show={ showDomain() }>
      ({ filters.domain(itemdata.url) })
    </span>
  </p>
  <p class="subtext">
    <span show={ showInfo() }>
      { itemdata.score } points by
      <a href="#user/{ itemdata.by }">{ itemdata.by }</a>
    </span>
    { filters.fromNow(itemdata.time) } ago
    <span class="comments-link" show={ showInfo() }>
      | <a href="#item/{ itemdata.id }">comments</a>
    </span>
  </p>

  <script>
  var self = this
  self.itemdata = opts.data

  href() {
    return self.itemdata.url || ('#/item/' + self.itemdata.id)
  }

  showInfo() {
    return self.itemdata.type === 'story' || self.itemdata.type === 'poll'
  }

  showDomain() {
    return self.itemdata.type === 'story'
  }
  </script>
</item>
