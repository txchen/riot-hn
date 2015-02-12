## Hackernews by Riotjs
This is a simple hackernews app implemented by [RiotJs](https://muut.com/riotjs/), it uses official hackernews api provided by firebase.

This app is converted from vuejs' [example](http://vuejs.org/examples/hackernews.html), to show that riotjs can also complete such task.

Features:
* use npm and script as dev work flow, no gulp or grunt.
* organize the code into views and components.
* use browserify to pack all the js files into one single output.
* support source map so that debugger in browser can be used.
* use riot's native routing feature.

**Online demo:** http://git.io/riot-hn

## Building and running

1. Make sure node and npm are installed

2. Clone the repo:
  ```
  git clone https://github.com/txchen/riot-hn.git
  ```

3. Install npm dependencies:
  ```bash
  cd riot-hn
  npm install
  ```

4. Start to develop, it would watch the source code and auto rebuild.
  ```bash
  npm run dev
  ```

5. Open your browser at http://127.0.0.1:9090

6. Or manually run the build, the output will be generated in ./build folder
  ```bash
  npm run build
  ```
