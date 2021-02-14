Browsers
========

## Firefox

- Install [Tridactyl](https://github.com/tridactyl/tridactyl)
- Install [Bitwarden](https://bitwarden.com/)
- Preferences -> Disable Ctrl+Tab "Recently Opened" Behavior
- DuckDuckGo as default search provider
- Disable one-click search suggestions
- Privacy -> strict mode
- Disable "ask to fill"
- Disable autoplay for all audio and video
- Disable firefox data collection
- Disable Pocket, top sites, etc.

## Gemini

[Project Gemini](https://gemini.circumlunar.space/) is an internet protocol
which sits somewhere between Gopher and HTTP. I've found it to be an interesting
project, and also fun to browse the indexes.

I've tried to use the following clients and have settled on Lagrange as my
graphical client, and Bombadillo as my text client. Overall _Bombadillo_ is
easily the best overall client that I've tried. It's lightweight, _works_, and
is fantastically useable.

### Graphical Clients

- [Lagrange](https://gmi.skyjake.fi/lagrange/): Actually works smoothly and
  renders pages properly.
- [Kristall](https://github.com/MasterQ32/kristall): Works, but doesn't render
  things well - even with justification disabled, pages are borderline 
  unreadable due to extremely strange spacing and component distribution.
- [Castor](https://git.sr.ht/~julienxx/castor): Essentially doesn't work for
  me. I can load an initial page, but going back seems to freeze the 
  application. I didn't spend enough time to see all the ways it was freezing,
  because I'd rather just use something else.

### Text Clients

- [Bombadillo](https://bombadillo.colorfield.space/): Simple terminal client
  with Vim-like key bindings. Works smoothly and reliably. It will even render
  images as ASCII (which isn't incredibly useable) but also downloads them to a
  configurable directory without crashing. See the 
  [documentation](https://rawtext.club/~sloum/bombadillo.html) for information
  about configuration and commands.
- [Asuka](https://tildegit.org/julienxx/asuka): Terminal client which seemed
  to work OK, but took quite a while to build and crashed the moment I 
  attempted to access an image resource.
