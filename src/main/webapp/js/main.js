document.addEventListener('DOMContentLoaded', function () {
    const alertBoxes = document.querySelectorAll('.alert');
    alertBoxes.forEach(function (alertBox) {
        alertBox.classList.add('fade-in');
    });
});
