ready = ->
  new Typed '.element', {
    strings: [
      "Hello Neo ...",
      "This is my ruby blog ...",
      "Click to learn more ----> <a href=about-thomas class=\"btn btn-lg btn-secondary\">Learn more</a>"
    ],
    typeSpeed: 40,
    backSpeed: 20,
    backDelay: 1000
  }
  return

$(document).on 'turbolinks:load', ready