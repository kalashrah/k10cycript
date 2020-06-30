(function(exports) {

exports.currentVC = function() {
    var app = [UIApplication sharedApplication]  
    var keyWindow = app.keyWindow  
    var rootController = keyWindow.rootViewController  
    var visibleController = rootController.visibleViewController  
    if (!visibleController){
       return rootController
    }
    return visibleController.childViewControllers[0]
};

exports.printm = function(className, isa) {
  var count = new new Type("I");
  var classObj = (isa != undefined) ? objc_getClass(className).constructor : objc_getClass(className);
  var methods = class_copyMethodList(classObj, count);
  var methodsArray = [];
  for(var i = 0; i < *count; i++) {
    var method = methods[i];
    methodsArray.push({selector:method_getName(method), implementation:method_getImplementation(method)});
  }
  free(methods);
  return methodsArray;
};

exports.find_locations = function(views, sortbyy = true) {
return views.map(function(view) {
return {
loc: [view convertPoint:[view bounds].origin toView: nil],
view: view
};
}).sort(function(v1, v2) {
if(sortbyy) {
return v1.loc.y - v2.loc.y;
} else {
return v1.loc.x - v2.loc.x;
}
})
};

exports.find_by_text = function(txt) {
return utils.find_subviews(x => x.text.toLowerCase().indexOf(txt.toLowerCase()));
};

})(exports);
