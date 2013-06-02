$ ->
  area = document.getElementById("post_content")
  editor = CodeMirror.fromTextArea area,
    mode: 'markdown'
    lineNumbers: false
    theme: "elegant"
    extraKeys:
      "Enter": "newlineAndIndentContinueMarkdownList"
