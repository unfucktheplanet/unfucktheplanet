
Mustache.template = function(templateString) {
  return function () {
    if (arguments.length < 1) {
      // With no arguments, return the raw template -- useful for rendering
      // partials.
      return templateString;
    } else {
      return Mustache.to_html(templateString, arguments[0], arguments[1]);
    }
  };
};