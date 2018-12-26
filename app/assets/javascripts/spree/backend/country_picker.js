Spree.routes.countries_api = Spree.pathFor('api/countries')

$.fn.countryAutocomplete = function () {
  'use strict';

  function formatCountry(country) {
    return Select2.util.escapeMarkup(country.name);
  }

  this.select2({
    minimumInputLength: 2,
    multiple: true,
    initSelection: function (element, callback) {
      Spree.ajax({
        url: Spree.pathFor('admin/search/countries'),
        datatype: 'json',
        data: {
          ids: element.val().split(','),
          token: Spree.api_key
        },
        success: function(data) {
          callback(data.countries);
        }
      });
    },
    ajax: {
      url: Spree.pathFor('admin/search/countries'),
      datatype: 'json',
      params: { "headers": { "X-Spree-Token": Spree.api_key } },
      data: function (term) {
        return {
          q: {
            name_start: term
          },
          token: Spree.api_key
        };
      },
      results: function (data) {
        return {
          results: data.countries,
          more: data.current_page < data.pages
        };
      }
    },
    formatResult: formatCountry,
    formatSelection: formatCountry
  });
};

Spree.ready(function () {
  $('.country_picker').countryAutocomplete();
});
