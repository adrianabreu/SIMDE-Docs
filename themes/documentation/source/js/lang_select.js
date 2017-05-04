(function () {
   'use strict';

   function changeLang() {
      var lang = this.value;
      if (lang === 'es') lang = '';
      if (lang) lang += '/';

      if (location.href.split('/').length === 4) {
         location.href = '/docs/' + lang;
      } else {
         var currentLocation = location.href.split('/')[location.href.split('/').length - 1];
         location.href = '/docs/' + lang + currentLocation;
      }
   }

   document.getElementById('lang-select').addEventListener('change', changeLang);
})();