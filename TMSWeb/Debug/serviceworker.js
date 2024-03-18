var CACHE_NAME = "Acuranzo";
var CACHED_URLS = [
  "Acuranzo.html",
  "Acuranzo.css",
  "Acuranzo.js",
  "IconResHigh.png",
  "IconResLow.png",
  "IconResMid.png",
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