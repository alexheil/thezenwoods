// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


  var currentBackground = 0;
  var backgrounds = [];
  backgrounds[0] = 'https://i.imgur.com/JTAfuXg.jpg';
  backgrounds[1] = 'https://upload.wikimedia.org/wikipedia/commons/1/19/Prairie_Creek_Redwoods_State_Park.jpg';
  backgrounds[2] = 'https://frenchinguadeloupe.com/wp-content/uploads/2018/04/nature-tour-1.jpg';
  backgrounds[3] = 'https://sb.ecobnb.net/app/uploads/sites/3/2016/02/29a-I-monti-Tianzi-in-Cina.jpg';
  backgrounds[4] = 'https://upload.wikimedia.org/wikipedia/commons/d/d6/Nature_Scenic_Landscape_Meghalaya_Laitmawsiang_India_July_2011.jpg';
  backgrounds[5] = 'https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/D8qa-2E/turquoise-lake-water-green-nature-background-resort-park_bdzizqio8__F0000.png';
  backgrounds[6] = 'https://cn.opendesktop.org/img/7/5/0/1/d8d855c5541b255c57bc86567ef69c1b8a10.jpg';
  backgrounds[7] = 'https://www.cbc.ca/natureofthings/content/images/episodes/NorthernLights_1920.jpg';

  function changeBackground() {
      currentBackground++;
      if(currentBackground > 7) currentBackground = 0;

      $('.background').fadeOut(2000,function() {
          $('.background').css({
              'background' : "no-repeat center center fixed",
              'background-image' : "url('" + backgrounds[currentBackground] + "')",
              'background-size' : "cover",
              '-webkit-background-size' : "cover",
              'position' : 'fixed',
              'top' : "0",
              'left' : "0",
              'width' : "100%",
              'height' : "100%",
              'opacity' : "0.85",
              'filter' : "alpha(opacity=85)",
              '-moz-opacity' : "0.85",
              '-khtml-opacity' : "0.85",
              'z-index' : "-3"
          });
          $('.background').fadeIn(2000);
      });


      setTimeout(changeBackground, 10000);
  }

$(document).ready(function() {
    setTimeout(changeBackground, 10000);        
});