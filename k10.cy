
(function(exports) {


    bundle = [NSBundle mainBundle].bundleIdentifier;

    prefsPath = NSHomeDirectory()
    prefsPathString = [prefsPath stringByAppendingString:@"/Library/Peferences"];
    filePath = [NSString stringWithFormat:@"%@/%@.plist", prefsPathString, bundle];
    
MJKeys = [[NSDictionary dictionaryWithContentsOfFile:filePath]allKeys];

newReplacing = function(self, oldS, newS){ return [self stringByReplacingOcurrencesOfString:oldS withString:newS]; };        

redDefaultes10 =  function() {
    bundle = [NSBundle mainBundle].bundleIdentifier;

     prefsPath = NSHomeDirectory()
     prefsPathString = [prefsPath stringByAppendingString:@"/Library/Peferences"];
    filePath = NSString.stringWithFormat("%@/%@.plist", prefsPathString, bundle);
    keys = NSDictionary.dictionaryWithContentsOfFile(filePath).allKeys();
return keys;
	};

        flex = function(){
	dlopen("/Library/MobileSubstrate/DynamicLibraries/flex.dylib", RTLD_NOW);
	return [[FLEXManager sharedManager ]showExplorer];
	};
	var invalidParamStr = 'Invalid parameter';
	var missingParamStr = 'Missing parameter';
	
	newArr = [[NSMutableArray alloc]init];                                                                                            

        k10AddToArray = function(){
	sw = choose(objc_getClass("SWGPost"));
            for(i = 0; i <= [sw count]; i++){
                postString = [sw[i] postId];
                    [newArr addObject:postString];
   		 }
	};

	k10NewDeleted = function(){
    
    	jdlR = choose(objc_getClass("JDLRestApi"))[0];
    
      	for(k = 0; k <= [newArr count]; k++){
        	deleteString = newArr[k];
        	[jdlR deletePostWithPostId:deleteString completionBlock: nil];
	      }
    };

        up10vv = function(){
    vee = choose(objc_getClass("Jodel.JDLFeedCellVoteView"))
    for (i = 0; i <= vee.length; i++){ [vee[i] upvoteTap:YES]; }
    };
	ch = function(o){ return [choose choose:objc_getClass(o)];};

find_locations = function(views, sortbyy = true) {
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
		});
	};

        k10de = function(key) { return [[NSUserDefaults standardUserDefaults] objectForKey:key]; } ;

	k10RemoveDe = function(key) { return [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];} ;
	
	k10setValue = function(key, val){
    return [[NSUserDefaults standardUserDefaults] setValue:val forKey:key]; 
    };
        k10setDe = function(key, bol) { return [[NSUserDefaults standardUserDefaults] setBool:bol forKey: key]; } ;

      k10Intset = function (key, intt) { return [[ NSUserDefaults standardUserDefaults] setLong:intt forKey: key]; };

	// us = [UserAccountInfo getSelfInfoItem];
	// app id
	MJAppId = [NSBundle mainBundle].bundleIdentifier;
	
	// AppVertion
	MJAppV  = [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
	// mainBundlePath
	MJAppPath = [NSBundle mainBundle].bundlePath;

	// document path
	MJDocPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];

	// caches path
	MJCachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0]; 

	// 加载系统动态库
	MJLoadFramework = function(name) {
		var head = "/System/Library/";
		var foot = "Frameworks/" + name + ".framework";
		var bundle = [NSBundle bundleWithPath:head + foot] || [NSBundle bundleWithPath:head + "Private" + foot];
  		[bundle load];
  		return bundle;
	};

	// keyWindow
	MJKeyWin = function() {
		return UIApp.keyWindow;
	};

	// 根控制器
	MJRootVc =  function() {
		return UIApp.keyWindow.rootViewController;
	};

	// 找到显示在最前面的控制器
	var _MJFrontVc = function(vc) {
		if (vc.presentedViewController) {
        	return _MJFrontVc(vc.presentedViewController);
	    }else if ([vc isKindOfClass:[UITabBarController class]]) {
	        return _MJFrontVc(vc.selectedViewController);
	    } else if ([vc isKindOfClass:[UINavigationController class]]) {
	        return _MJFrontVc(vc.visibleViewController);
	    } else {
	    	var count = vc.childViewControllers.count;
    		for (var i = count - 1; i >= 0; i--) {
    			var childVc = vc.childViewControllers[i];
    			if (childVc && childVc.view.window) {
    				vc = _MJFrontVc(childVc);
    				break;
    			}
    		}
	        return vc;
    	}
	};
	
	k10Date = function(formatterString){
    var date = [NSDate date];
    var formatter = [[NSDateFormatter alloc]  init];
    [formatter setDateFormat:formatterString];
    var stringDate = [formatter stringFromDate:date];
    return stringDate;
    }

	MJFrontVc = function() {
		return _MJFrontVc(UIApp.keyWindow.rootViewController);
	};

	// 递归打印UIViewController view的层级结构
	MJVcSubviews = function(vc) { 
		if (![vc isKindOfClass:[UIViewController class]]) throw new Error(invalidParamStr);
		return vc.view.recursiveDescription().toString(); 
	};

	// 递归打印最上层UIViewController view的层级结构
	MJFrontVcSubViews = function() {
		return MJVcSubviews(_MJFrontVc(UIApp.keyWindow.rootViewController));
	};

	// 获取按钮绑定的所有TouchUpInside事件的方法名
	MJBtnTouchUpEvent = function(btn) { 
		var events = [];
		var allTargets = btn.allTargets().allObjects()
		var count = allTargets.count;
    	for (var i = count - 1; i >= 0; i--) { 
    		if (btn != allTargets[i]) {
    			var e = [btn actionsForTarget:allTargets[i] forControlEvent:UIControlEventTouchUpInside];
    			events.push(e);
    		}
    	}
	   return events;
	};

	// CG函数
	MJPointMake = function(x, y) { 
		return {0 : x, 1 : y}; 
	};

	MJSizeMake = function(w, h) { 
		return {0 : w, 1 : h}; 
	};

	MJRectMake = function(x, y, w, h) { 
		return {0 : MJPointMake(x, y), 1 : MJSizeMake(w, h)}; 
	};

	// 递归打印controller的层级结构
	MJChildVcs = function(vc) {
		if (![vc isKindOfClass:[UIViewController class]]) throw new Error(invalidParamStr);
		return [vc _printHierarchy].toString();
	};

	


	// 递归打印view的层级结构
	MJSubviews = function(view) { 
		if (![view isKindOfClass:[UIView class]]) throw new Error(invalidParamStr);
		return view.recursiveDescription().toString(); 
	};

	// 判断是否为字符串 "str" @"str"
	MJIsString = function(str) {
		return typeof str == 'string' || str instanceof String;
	};

	// 判断是否为数组 []、@[]
	MJIsArray = function(arr) {
		return arr instanceof Array;
	};

	// 判断是否为数字 666 @666
	MJIsNumber = function(num) {
		return typeof num == 'number' || num instanceof Number;
	};

	var _MJClass = function(className) {
		if (!className) throw new Error(missingParamStr);
		if (MJIsString(className)) {
			return NSClassFromString(className);
		} 
		if (!className) throw new Error(invalidParamStr);
		// 对象或者类
		return className.class();
	};

	// 打印所有的子类
	MJSubclasses = function(className, reg) {
		className = _MJClass(className);

		return [c for each (c in ObjectiveC.classes) 
		if (c != className 
			&& class_getSuperclass(c) 
			&& [c isSubclassOfClass:className] 
			&& (!reg || reg.test(c)))
			];
	};

	// 打印所有的方法
	var _MJGetMethods = function(className, reg, clazz) {
		className = _MJClass(className);

		var count = new new Type('I');
		var classObj = clazz ? className.constructor : className;
		var methodList = class_copyMethodList(classObj, count);
		var methodsArray = [];
		var methodNamesArray = [];
		for(var i = 0; i < *count; i++) {
			var method = methodList[i];
			var selector = method_getName(method);
			var name = sel_getName(selector);
			if (reg && !reg.test(name)) continue;
			methodsArray.push({
				selector : selector, 
				type : method_getTypeEncoding(method)
			});
			methodNamesArray.push(name);
		}
		free(methodList);
		return [methodsArray, methodNamesArray];
	};

	var _MJMethods = function(className, reg, clazz) {
		return _MJGetMethods(className, reg, clazz)[0];
	};

	// 打印所有的方法名字
	var _MJMethodNames = function(className, reg, clazz) {
		return _MJGetMethods(className, reg, clazz)[1];
	};

	// 打印所有的对象方法
	MJInstanceMethods = function(className, reg) {
		return _MJMethods(className, reg);
	};

	// 打印所有的对象方法名字
	MJInstanceMethodNames = function(className, reg) {
		return _MJMethodNames(className, reg);
	};

	// 打印所有的类方法
	MJClassMethods = function(className, reg) {
		return _MJMethods(className, reg, true);
	};

	// 打印所有的类方法名字
	MJClassMethodNames = function(className, reg) {
		return _MJMethodNames(className, reg, true);
	};

	// 打印所有的成员变量
	MJIvars = function(obj, reg){ 
		if (!obj) throw new Error(missingParamStr);
		var x = {}; 
		for(var i in *obj) { 
			try { 
				var value = (*obj)[i];
				if (reg && !reg.test(i) && !reg.test(value)) continue;
				x[i] = value; 
			} catch(e){} 
		} 
		return x; 
	};

	
	MJIvarNames = function(obj, reg) {
		if (!obj) throw new Error(missingParamStr);
		var array = [];
		for(var name in *obj) { 
			if (reg && !reg.test(name)) continue;
			array.push(name);
		}
		return array;
	};
})(exports);
