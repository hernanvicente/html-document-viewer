// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();

// From https://codemirror.net/doc/manual.html
$(function() {
  var textArea  = document.getElementById("html_code");
  var editor    = CodeMirror.fromTextArea(textArea, {
    styleActiveLine: true,
    mode: {name:"xml", htmlMode: true},
    lineNumbers: true,
    lineWrapping: false,
    theme: 'xq-light',
    tabSize: 2
  });
});
