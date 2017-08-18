document.addEventListener('DOMContentLoaded', function(){
  var navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  if (navbarBurgers.length > 0){
    navbarBurgers.forEach(function(self){
      self.addEventListener('click', ()=>{
        var target  = document.getElementById(self.dataset.target);

        self.classList.toggle('is-active');
        target.classList.toggle('is-active');
      });
    });
  };
});
