document.addEventListener("DOMContentLoaded", function() {
  var openBtn = document.getElementById("open-modal");
  var closeBtn = document.getElementById("close-modal");
  var modal = document.getElementById("add-cheese-modal-backdrop");

  if (openBtn && closeBtn && modal) {
    openBtn.addEventListener("click", function() {
      modal.style.display = "block";
    });
    closeBtn.addEventListener("click", function() {
      modal.style.display = "none";
    });
    window.addEventListener("click", function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    });
  }
});