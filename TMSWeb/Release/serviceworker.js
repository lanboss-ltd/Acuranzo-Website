var CACHE_NAME = "Acuranzo";
var CACHED_URLS = [
  "Acuranzo.html",
  "Acuranzo.css",
  "Acuranzo.js",
  "IconResHigh.png",
  "IconResLow.png",
  "IconResMid.png",
  "logos/10.2__iPad_landscape.png",
  "logos/10.2__iPad_portrait.png",
  "logos/10.5__iPad_Air_landscape.png",
  "logos/10.5__iPad_Air_portrait.png",
  "logos/10.9__iPad_Air_landscape.png",
  "logos/10.9__iPad_Air_portrait.png",
  "logos/11__iPad_Pro__10.5__iPad_Pro_landscape.png",
  "logos/11__iPad_Pro__10.5__iPad_Pro_portrait.png",
  "logos/12.9__iPad_Pro_landscape.png",
  "logos/12.9__iPad_Pro_portrait.png",
  "logos/4__iPhone_SE__iPod_touch_5th_generation_and_later_landscape.png",
  "logos/4__iPhone_SE__iPod_touch_5th_generation_and_later_portrait.png",
  "logos/8.3__iPad_Mini_landscape.png",
  "logos/8.3__iPad_Mini_portrait.png",
  "logos/9.7__iPad_Pro__7.9__iPad_mini__9.7__iPad_Air__9.7__iPad_landscape.png",
  "logos/9.7__iPad_Pro__7.9__iPad_mini__9.7__iPad_Air__9.7__iPad_portrait.png",
  "logos/acuranzo.ico",
  "logos/acuranzo-128.png",
  "logos/acuranzo-256.png",
  "logos/icon.png",
  "logos/iPhone_11__iPhone_XR_landscape.png",
  "logos/iPhone_11__iPhone_XR_portrait.png",
  "logos/iPhone_11_Pro_Max__iPhone_XS_Max_landscape.png",
  "logos/iPhone_11_Pro_Max__iPhone_XS_Max_portrait.png",
  "logos/iPhone_13_mini__iPhone_12_mini__iPhone_11_Pro__iPhone_XS__iPhone_X_landscape.png",
  "logos/iPhone_13_mini__iPhone_12_mini__iPhone_11_Pro__iPhone_XS__iPhone_X_portrait.png",
  "logos/iPhone_14__iPhone_13_Pro__iPhone_13__iPhone_12_Pro__iPhone_12_landscape.png",
  "logos/iPhone_14__iPhone_13_Pro__iPhone_13__iPhone_12_Pro__iPhone_12_portrait.png",
  "logos/iPhone_14_Plus__iPhone_13_Pro_Max__iPhone_12_Pro_Max_landscape.png",
  "logos/iPhone_14_Plus__iPhone_13_Pro_Max__iPhone_12_Pro_Max_portrait.png",
  "logos/iPhone_15_Pro__iPhone_15__iPhone_14_Pro_landscape.png",
  "logos/iPhone_15_Pro__iPhone_15__iPhone_14_Pro_portrait.png",
  "logos/iPhone_15_Pro_Max__iPhone_15_Plus__iPhone_14_Pro_Max_landscape.png",
  "logos/iPhone_15_Pro_Max__iPhone_15_Plus__iPhone_14_Pro_Max_portrait.png",
  "logos/iPhone_8__iPhone_7__iPhone_6s__iPhone_6__4.7__iPhone_SE_landscape.png",
  "logos/iPhone_8__iPhone_7__iPhone_6s__iPhone_6__4.7__iPhone_SE_portrait.png",
  "logos/iPhone_8_Plus__iPhone_7_Plus__iPhone_6s_Plus__iPhone_6_Plus_landscape.png",
  "logos/iPhone_8_Plus__iPhone_7_Plus__iPhone_6s_Plus__iPhone_6_Plus_portrait.png",
  "Manifest.json",
  "UnitMain.html"
  ];

self.addEventListener('install', function(event) {
                event.waitUntil(
                                caches.open(CACHE_NAME).then(function(cache) {
                                return cache.addAll(CACHED_URLS);
                })
                                );
});


self.addEventListener('fetch',function(event) {
   event.respondWith(
     fetch(event.request).catch(function() {
                   return caches.match(event.request).then(function(response) {
       if (response) {
                                   return response;
       } else if (event.request.headers.get("accept").includes("text/html")) {
                                   return caches.match("Acuranzo.html");
                   }
                   });
   })
                   );
});