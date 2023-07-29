exports.init = function (app) {
  app.ports.loadLocalStorage.subscribe(function (key) {
    let value = getLocalStorage(key);
    console.log(`loadLocalStorage(${key}) = ${value}`);
    app.ports.loadedLocalStorage.send({ key, value });
  });
  app.ports.saveToLocalStorage.subscribe(function ({ key, value }) {
    console.log(`saveToLocalStorage({key:${key},value:${value}})`);
    localStorage.setItem(key, JSON.stringify(value));
  });
  app.ports.loadLocale.subscribe(function (key) {
    let value = getLocalStorage(key) || navigator.language;
    console.log(`loadLocale(${key}) = ${value}`);
    app.ports.loadedLocalStorage.send({ key, value });
  });
};

function getLocalStorage(key) {
  try {
    return JSON.parse(localStorage.getItem(key));
  } catch (e) {
    return null;
  }
}
