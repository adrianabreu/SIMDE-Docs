(function () {
   'use strict';

   function changeLang() {
      var lang = this.value;
      if (lang === 'es') lang = '';
      if (lang) lang += '/';

      if (location.href.split('/').length === 4) {
         location.href = '/simde-documentation/' + lang;
      } else {
         var currentLocation = location.href.split('/')[location.href.split('/').length - 1];
         location.href = '/simde-documentation/' + lang + currentLocation;
      }
   }

   document.getElementById('lang-select').addEventListener('change', changeLang);
})();