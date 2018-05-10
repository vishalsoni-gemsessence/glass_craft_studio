$(function() {
  // ...
  $(".sign-in").validate({
    errorElement: 'div', //default input error message container
    errorClass: 'invalid-feedback subsection-sm', // default input error message class
    highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid")
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid")
    },
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",
    rules: {
      'spree_user[email]': {
        required: true
      },
      'spree_user[password]': {
        required: true
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });

  $("#checkout_form_registration").validate({
    errorElement: 'div', //default input error message container
    errorClass: 'invalid-feedback subsection-sm', // default input error message class
    highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid")
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid")
    },
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",
    rules: {
      "order[email]": {
        required: true
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });

  $(".sign-up").validate({
    errorElement: 'div', //default input error message container
    errorClass: 'invalid-feedback subsection-sm', // default input error message class
    highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid")
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid")
    },
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",
    rules: {
      'spree_user[email]': {
        required: true
      },
      'spree_user[password]': {
        required: true
      },
      'spree_user[full_name]': {
        required: true
      },
      'spree_user[password_confirmation]': {
        required: true
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });

  $(".forget-password").validate({
    errorElement: 'div', //default input error message container
    errorClass: 'invalid-feedback subsection-sm', // default input error message class
    highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid")
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid")
    },
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",
    rules: {
      'spree_user[email]': {
        required: true
      },
      'spree_user[password]': {
        required: true
      },
      'spree_user[password_confirmation]': {
        required: true
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });

  $("#checkout_form_address").validate({
    errorElement: 'div', //default input error message container
    errorClass: 'invalid-feedback subsection-sm', // default input error message class
    highlight: function (element, errorClass, validClass) {
        $(element).addClass("is-invalid")
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass("is-invalid")
    },
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",
    rules: {
      'order[bill_address_attributes][phone]': {
        number: true
      }
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
})