/****************************************
 * cookieBubble.js: Version 1.1.4
 * author: João Pereira
 * website: http://joaopereira.pt
 * email: joaopereirawd@gmail.com
 * Licensed MIT 
*****************************************/
(function ($) {
	$.cookieBubble = function (options) {
		var private_opt = {
			cookieName: 'cookieBubble',
			isVisible: false,
			cookieValue: true
		}
		//extended opts
		var settings = $.extend({	
			cookieMaxAge  						: 30, 
			messageText								: 'We use cookies to personalize your experience. By continuing to visit this website you agree to our use of cookies.', 
			messageTextColor					: undefined,        
			messageFontSize						: undefined,				 
			buttonText 								: 'Got it',   
			buttonColor								: undefined,   				
			buttonFontSize						: undefined,				  
			iconColor								  : undefined,    			 
			iconVisibility		  			: true, 		              
			cookiePolicyButtonText		: 'Read Our Cookie Policy',
			cookiePolicyButtonTextColor	: undefined,
			cookiePolicyButtonUrl			: '',
			cookiePolicyButtonTarget	: '_blank',
			boxAppearDelay						: 1000
		}, options);

		var box_visibility = private_opt.isVisible ? 'show' : 'hide';
	  var box_iconVisibility = settings.iconVisibility ? '<div class="cb-image"><img src="/images/icons/icon-80x80.png"></div>' : '';
		var cookiePolicyTarget = settings.cookiePolicyButtonTarget === '_blank' || settings.cookiePolicyButtonTarget === '_self' ? settings.cookiePolicyButtonTarget : settings.cookiePolicyButtonTarget;

		var cookieApp = {
			init: function() {
				cookieApp.body();
				cookieApp.painter();
				cookieApp.checkCookie(); 
			},
			body: function() {
				$("body").append(
					'<div id="overlay" class="overlay">'+
  					'<div class="cookie-bubble '+box_visibility+ ' '+settings.boxPosition+'">'+
  						'<div class= "cb-wrapper">'+
  							'<div class="cb-row">'+
  								box_iconVisibility+
  								'<div class="cb-row-content">'+
  									'<span class="message">'+settings.messageText+'</span>'+
  									'<div class="cb-controls">'+
  										'<button class="agreement-btn">' + settings.buttonText + '</button>' +
  										'<a class="cookie-policy-btn" href=' + settings.cookiePolicyButtonUrl + ' target=' + cookiePolicyTarget + '>'
  											+settings.cookiePolicyButtonText+
  										'</a>'+
  									'</div>' +
  								'</div>'+
  						'</div >'+
						'</div >'+
					'</div >'
				);
			},
			painter:function(){
				var cb_message 			  = $('.cookie-bubble .cb-message span'),
					cb_button 			  = $('.cookie-bubble .agreement-btn'),
					cb_cookie_policy_btn  = $('.cookie-bubble .cookie-policy-btn');


				var style_message = {
					'color': settings.messageTextColor,
					'font-size': settings.messageFontSize
				}

				var style_agreement_btn = {
					'background-color': settings.buttonColor,
					'font-size':settings.buttonFontSize
				}


				var style_cookie_policy_btn = {
					'color': settings.cookiePolicyButtonTextColor
				}
			
				cb_message.css(style_message);
				cb_button.css(style_agreement_btn);
				cb_cookie_policy_btn.css(style_cookie_policy_btn);
			},
			setCookie:function(cname,cvalue,exdays) {
			    var d = new Date();
			    d.setTime(d.getTime() + (exdays*24*60*60*1000));
			    var expires = "expires=" + d.toGMTString();
			    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
			},
			getCookie: function(cname) {
			    var name = cname + "=";
			    var decodedCookie = decodeURIComponent(document.cookie);
			    var ca = decodedCookie.split(';');
			    for(var i = 0; i < ca.length; i++) {
			        var c = ca[i];
			        while (c.charAt(0) == ' ') {
			            c = c.substring(1);
			        }
			        if (c.indexOf(name) == 0) {
			            return c.substring(name.length, c.length);
			        }
			    }
			    return "";
			},
			checkCookie: function() {
				var get_cookie = cookieApp.getCookie(private_opt.cookieName);

				if (get_cookie != "" && get_cookie != null) {
					$('.cookie-bubble').removeClass('show').addClass('hide'); 
					document.getElementById("overlay").style.display = "none";
			    } else {
						setTimeout(function () {
							$('.cookie-bubble').removeClass('hide').addClass('show');
    					document.getElementById("overlay").style.display = "block";              
						}, settings.boxAppearDelay);

						var button = $('.cookie-bubble .agreement-btn'); 
			    		button.click(function(event) {
							cookieApp.setCookie(private_opt.cookieName, private_opt.cookieValue, settings.cookieMaxAge); 
							$('.cookie-bubble').removeClass('show').addClass('hide'); 
    					document.getElementById("overlay").style.display = "none";              
					});
			   }
			}

		}
		cookieApp.init();
	};
})(jQuery);


