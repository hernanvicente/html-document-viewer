assets do
  serve '/css',   from: 'assets/stylesheets'
  serve '/js',    from: 'assets/javascripts'
  serve '/bower', from: 'assets/bower_components'

  js :modernizr, [
    '/bower/modernizr/modernizr.js',
  ]

  js :libs, [
    '/bower/jquery/dist/jquery.js',
    '/bower/foundation/js/foundation.js',
    '/bower/codemirror/lib/codemirror.js',
    '/bower/codemirror/mode/xml/xml.js',
    '/bower/codemirror/addon/selection/active-line.js'
  ]

  js :application, [
    '/js/app.js'
    #'/js/jquery.js',
    #'/js/app.js'
    # You can also do this: 'js/*.js'
  ]

  css :codemirror, [
    '/bower/codemirror/lib/codemirror.css',
    '/bower/codemirror/theme/xq-light.css'
  ]

  js_compression :jsmin
  css_compression :sass

end
