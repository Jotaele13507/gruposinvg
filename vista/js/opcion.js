window.sweetPrompt = function (title, message, callback, input, keepopen, allowOutsideClick, allowEscapeKey) {
    sweetAlert({
        title: title,
        text: message,
        input: 'text',
        confirmButtonColor: "#428bca",
        preConfirm: function(text) {
            return new Promise(function(resolve) {
                if (!keepopen) {
                    resolve();
                } else {
                    callback(text);
                }
            });
        },
        inputValidator: function(text) {
            return new Promise(function (resolve, reject) {
                if (text) {
                    resolve();
                } else {
                    reject('Cannot be empty!');
                }
            });
        },
        inputValue: input,
        showCancelButton: true,
        reverseButtons: true,
        allowOutsideClick: allowOutsideClick,
        allowEscapeKey: allowEscapeKey
    }).then(callback, function(dismiss){});
};

Swal.fire({
  input: 'text',
  inputValue: 'input value',
  didOpen: () => {
    const input = Swal.getInput()
    input.setSelectionRange(0, input.value.length)
  }
})
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
