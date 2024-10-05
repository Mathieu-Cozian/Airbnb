(() => {
  // app/javascript/registerControllers.js
  function registerControllers(application, controllers) {
    for (const controllerName in controllers) {
      if (controllers.hasOwnProperty(controllerName)) {
        const controller = controllers[controllerName];
        const identifier = controllerName.replace(/^.*[\\/]/, "").replace("_controller.js", "").replace(/_/g, "-");
        application.register(identifier, controller.default);
      }
    }
  }
})();
//# sourceMappingURL=/assets/registerControllers.js.map
