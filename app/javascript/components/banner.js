import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Here you can make ", "all your favorite drinks"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
