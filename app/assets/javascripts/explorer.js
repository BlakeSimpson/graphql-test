$(function () {
  var $explorer = $('.explorer'),
    $form = $explorer.find('form'),
    $textarea = $form.find('textarea'),
    $output = $explorer.find('.output'),
    $examples = $explorer.find('select'),
    url = $form.attr('action');

  $form.on('submit', function () {
    $.ajax({
      url: url,
      data: $textarea.val(),
      type: 'POST',
      success: function (result) {
        var $pre = $('<pre>')
          .addClass('prettyprint lang-js')
          .html(result);

        $output.html($pre);
        PR.prettyPrint();
      },
      error: function (xhr) {
        var $error = $('<pre class="error">')
          .html(xhr.responseText);

        $output.html($error);
      }
    });

    return false;
  });

  $examples.on('change', function (selected) {
    var id = $examples.find('option:selected').attr('name'),
      $example = $('#' + id),
      text = $example.text().trim(),
      lines = text.split("\n"),
      indentCount = lines[lines.length - 1].match(/\s+/)[0].length,
      newText = [];

    lines.forEach(function(line, index) {
      if (index === 0) {
        newText.push(line);
      } else {
        newText.push(line.substring(indentCount, line.length));
      }
    });

    $textarea.val(newText.join("\n"));
  });
});
