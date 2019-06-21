import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Old wine to drink ^1000", "Old friends to trust ^1000", "Old places to reminisce ^1000"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
