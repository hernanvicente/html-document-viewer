assets do

  serve '/js', :from => 'assets/javascripts'
  serve '/bower_components', from: 'assets/bower_components'

  js :modernizr, [
    'assets/bower_components/modernizr/modernizr.js',
  ]

  js :libs, [
    'assets/bower_components/jquery/dist/jquery.js',
    'assets/bower_components/foundation/js/foundation.js'
  ]

  js :application, [
    'assets/javascripts/app.js'
    #'/js/jquery.js',
    #'/js/app.js'
    # You can also do this: 'js/*.js'
  ]

  js_compression :jsmin
  css_compression :sass

end
