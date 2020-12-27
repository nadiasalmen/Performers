import $ from 'jquery';
import 'jquery-form';

const initJqueryForm = () => {
  $('#bootstrapForm').submit(function (event) {
      event.preventDefault();
      $('#bootstrapForm').ajaxSubmit({
          url: "https://docs.google.com/forms/d/e/1FAIpQLSd7Bt9RlqIsWi6ewkrZZ01REcxBRxGL8MIDEbbnkCWdHB7mVQ/formResponse",
          data: $(this).serialize(),
          type: "POST",
          dataType: 'xml',  // This won't really work. It's just to use a GET instead of a POST to allow cookies from different domain.
          succes: function () {
              // Submit of form should be successful but JSONP callback will fail because Google Forms
              // does not support it, so this is handled as a failure.
              alert('Se envió tu email. Gracias!');
              // You can also redirect the user to a custom thank-you page:
              // window.location = 'http://www.mydomain.com/thankyoupage.html'
              window.location.href = "/";
          },
          error: function () {
              // Submit of form should be successful but JSONP callback will fail because Google Forms
              // does not support it, so this is handled as a failure.
              alert('Se envió tu email. Gracias!');
              // You can also redirect the user to a custom thank-you page:
              // window.location = 'http://www.mydomain.com/thankyoupage.html'
              window.location.href = "/";
          }
      });
  });
};

export { initJqueryForm };
