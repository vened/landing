var App = function () {

  var config = {//Basic Config
    sliderRevolution: true,
    magnificPopup: true,
    owlSlider: true,
    animationTrigger:true
  }; 
  
  var preloadImg =  function(){
    /*Preload Images*/
    // cache buster 
    var t = (new Date).getTime();

    var the_images = [];

    the_images.push('images/head-bg.png');
    the_images.push('images/menu-left-corner.png');
    the_images.push('images/menu-right-corner.png');
    the_images.push('images/menu-bg2.png');
    the_images.push('images/dropdownmenu-bg.png');
    the_images.push('images/bg1.png');
    the_images.push('images/headerlogo-02.png');

    jQuery.imgpreload(the_images,
    {
      each: function(){
        
      },
      all: function(){//When all images are loaded
        $("#contenedor").css({
          opacity: '1',
          top: '0'
        });
      }
    });
  };/*End of Preload Images*/
  
  var contact = function(){
     var map;
    var position = new google.maps.LatLng(40.648541, -74.018068);
    var mapOptions = {
      zoom: 15,
    disableDefaultUI: true,
      center: position,
    disableDoubleClickZoom: true,
    scrollwheel: false,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById('map_one'), mapOptions);

     var marker = new google.maps.Marker({
        position: position,
     animation: google.maps.Animation.DROP,
        map: map,
        title: 'Hello World!'
    });
  };//End of maps
  
  
  //Portfolio
  var portfolio = function(){
    	$('#grid').mixitup();
  };//End of portfolio
 
  return {
  
    /*Public Methods*/
    init: function (options) {
      //Extends basic config with options
      $.extend( config, options );
      
      if(config.sliderRevolution){
        //SliderRevolution
        $('.tp-banner').revolution({
          delay:9000,
          startheight:470,
          fullWidht:"on",
          hideThumbs:10,
          videoJsPath: 'js/jquery.sliderrevolution/src/videojs/', 
          navigationType:"none"
        });
      }
      
      if(config.magnificPopup){
        //MagnificPopup
        $('.image-link').magnificPopup({ 
          type: 'image',
          mainClass: 'mfp-with-zoom', // this class is for CSS animation below

          zoom: {
          enabled: true, // By default it's false, so don't forget to enable it

          duration: 300, // duration of the effect, in milliseconds
          easing: 'ease-in-out', // CSS transition easing function 

          // The "opener" function should return the element from which popup will be zoomed in
          // and to which popup will be scaled down
          // By defailt it looks for an image tag:
          opener: function(openerElement) {
            // openerElement is the element on which popup was initialized, in this case its <a> tag
            // you don't need to add "opener" option if this code matches your needs, it's defailt one.
            var parent = $(openerElement).parents("div.photo");
            return parent;
          }
          }

        });
      }
      
      if(config.owlSlider){
        //Owl Sliders
        $(".owl-slider").owlCarousel({
          navigation: true,
          navigationText:[
            "<i class='fa fa-angle-left fa-2x icon-white'></i>",
            "<i class='fa fa-angle-right fa-2x icon-white'></i>"
          ],
          pagination: false
        });
      }
      
      if(config.animationTrigger){
        //Animation Triggers
        $(window).scroll(function() {
          
          var el = $(".block-showcase .image");
          el.each(function(){
            var actual = $(this);
            if(actual.visible()){
              actual.addClass("en-fade-up");
            }
          });
          
          var icon = $(".feature .fa, .fa-ul i");
          icon.each(function(){
            var esto = $(this);
            if(esto.visible()){
              esto.addClass("en-zoom-in");
            }
          });
          
          //Standard animation trigger
          var els = $(".fl-animate");//Select all .fl-animate elements
          
          //To each element apply this trigger
          els.each(function(){
            //Get the current element
            var actual = $(this);
            
            //Extract the data-animation attribute from the current element
            var animation = actual.data("animation");
            
            if(actual.visible()){
              actual.addClass(animation);
            }
          });
          
        });
      }
      
    },
    
    preloadImg: function(){
      preloadImg();
    },
      
    contact: function (){
      contact();
    },
 
    portfolio: function(){
      portfolio();
    }
    
  };
 
}();

