var App = App || {};
App.Pages = App.Pages || {};

App.Pages.Home = {
  init: function(options){
    this.page = document.getElementById('home-page');
    this.initFourthBlock();
  },

  initFourthBlock: function(){
    var fourthBlock, titleElement, description;

    fourthBlock = this.page.getElementsByClassName('js-fourth-block')[0];
    titleElement = fourthBlock.getElementsByClassName('js-title')[0];

    titleElement.innerText = 'Fourth Block Container';
    description = document.createElement('p');
    description.innerHTML = 'The title of this block and this line are rendered via <strong>App.Pages.Home.init()</strong> using <strong>Vanilla JavaScript</strong>.'

    fourthBlock.appendChild(description);
  }
};
