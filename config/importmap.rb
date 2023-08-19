# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "app/javascript/navbar.js", to: "navbar.js", preload: true
pin "swiper", to: "swiper/swiper-bundle.min.js", preload: true
pin "swiper", to: "swiper/swiper-bundle.min.css", preload: true

