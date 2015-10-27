# ccsouthard

### Setup

- make sure [node.js](http://nodejs.org) and [roots](http://roots.cx) are installed
- clone this repo down and `cd` into the folder
- run `npm install`
- run `roots watch`

### Deploying

- If you just want to compile the production build, run `roots compile -e production` and it will build to public.
- To deploy your site with a single command, run `roots deploy -to XXX` with `XXX` being whichever [ship](https://github.com/carrot/ship#usage) deployer you want to use.

Singing Wolf

jade snippets

      .portal.web
        a(href='http://ibisinteract.com/')
        h2 Web
        p Design &amp; Development

      .portal.art
        a(href='home.html')
        h2 Art
        p The Gallery &amp; Words

      .portal.projects
        a(href='home.html')
        h2 Projects
        p The Lab