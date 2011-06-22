
(function ($) {

String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1);
};

  $.fn.formatedJson = function(error, info, handler) {
    /*
     * error:   ul donde agregar errores
     * info:    ul donde agregar los mensajes de flash (puede ser el mismo que error)
     * handler: función a ejecutar cuando está todo ok.
     */

    return this.bind('ajax:success', '', function(event, data) {
      error.hide();
      info.hide();
      error.html('');
      info.html('');
      
      var result = data.result;
      var response = data.response;
      var flash = data.flash;

      for(i in flash) {
        info.append($('<li class="' + i + ' flash">' + flash[i] + '</li>'));
      }

      if(result === 'ok') {
        handler.apply(this, [response]); //this es el de esta función
      } else {
        for(field in response) {
          error.append(
              $('<li class="' + field + ' error">' +
                field.capitalize() + ' ' +response[field] + '</li>'));
        }
      }

      if(error === info) {
        if(flash||result!=='ok') info.slideDown();
      } else {
        if(flash) info.slideDown();
        if(result !== 'ok') error.slideDown();
      }
    });
  };
})(jQuery);

