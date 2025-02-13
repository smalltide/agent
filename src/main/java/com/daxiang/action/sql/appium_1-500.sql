-- 1.Click
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	1,
	'点击',
	'WebElement.click',
	'com.daxiang.action.appium.Click',
	1,
	1,
	'WebElement',
	'[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"}]'
);

-- 2. ClickElement
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
  2,
	'点击元素',
	'WebElement.click',
	'com.daxiang.action.appium.ClickElement',
	0,
	1,
  'WebElement',
	'[{"name": "webElement", "description": "元素对象"}]'
);

-- 3.FindElement
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	3,
	'查找元素',
	'AppiumDriver.findElement',
	'com.daxiang.action.appium.FindElement',
	1,
	1,
	'WebElement',
  '[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"}]'
);

-- 4.SendKeys
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
  4,
	'输入',
	'WebElement.sendKeys',
	'com.daxiang.action.appium.SendKeys',
	1,
	1,
	'WebElement',
  '[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"},{"name": "content", "description": "输入内容"}]'
);

-- 5.SetImplicitlyWaitTime
INSERT INTO `action` (
  `id`,
  `name`,
  `description`,
  `class_name`,
  `need_driver`,
  `has_return_value`,
  `params`
)
VALUES
(
  5,
  '设置隐士等待时间',
  'AppiumDriver.manage().timeouts().implicitlyWait',
  'com.daxiang.action.appium.SetImplicitlyWaitTime',
  1,
  0,
  '[{"name": "implicitlyWaitTimeInSeconds", "description": "隐士等待时间，单位：秒"}]'
);

-- 6.FindElements
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	6,
	'查找元素',
	'AppiumDriver.findElements',
	'com.daxiang.action.appium.FindElements',
	1,
	1,
	'List<WebElement>',
  '[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"}]'
);

-- 7.WaitForElementVisible
INSERT INTO `action` (
  `id`,
  `name`,
  `description`,
  `class_name`,
  `need_driver`,
  `has_return_value`,
  `return_value_desc`,
  `params`
)
VALUES
(
  7,
  '等待元素可见',
  'WebDriverWait().until(ExpectedConditions.visibilityOfElementLocated)',
  'com.daxiang.action.appium.WaitForElementVisible',
  1,
  1,
  'WebElement',
  '[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"},{"name": "maxWaitTimeInSeconds", "description": "最大等待时间"}]'
);

-- 8.ElementSendKeys
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	8,
	'元素输入',
	'WebElement.sendKeys',
	'com.daxiang.action.appium.ElementSendKeys',
	0,
	1,
	'WebElement',
	'[{"name": "webElement", "description": "元素对象"}, {"name": "content", "description": "输入内容"}]'
);

-- 9.ExecuteScript
INSERT INTO `action` (
  `id`,
  `name`,
  `description`,
  `class_name`,
  `need_driver`,
  `has_return_value`,
  `return_value_desc`,
  `params`
)
VALUES
(
  9,
  '执行脚本',
  'AppiumDriver.executeScript',
  'com.daxiang.action.appium.ExecuteScript',
  1,
  1,
  'Object',
  '[{"name": "script", "description": "脚本内容 http://appium.io/docs/en/commands/mobile-command/"},{"name": "args", "description": "参数值"}]'
);

-- 10.GetAttribute
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	10,
	'获取元素属性',
	'WebElement.getAttribute',
	'com.daxiang.action.appium.GetAttribute',
	0,
	1,
	'元素属性值',
	'[{"name": "webElement", "description": "元素对象"},{"name": "attributeName", "description": "属性名"}]'
);

-- 11.GetElementId
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	11,
	'获取元素id',
	'WebElement.getId',
	'com.daxiang.action.appium.GetElementId',
	0,
	1,
	'WebElementId',
	'[{"name": "webElement", "description": "元素对象"}]'
);

-- 12.SwitchContext
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`params`
)
VALUES
(
	12,
	'切换context',
	'AppiumDriver.context',
	'com.daxiang.action.appium.SwitchContext',
	1,
	0,
	'[{"name":"context","description":"context","possibleValues":[{"value":"NATIVE_APP","description":"原生"},{"value":"WEBVIEW","description":"webview"}]}]'
);

-- 13.SwipeScreen
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`params`
)
VALUES
(
	13,
	'滑动屏幕',
	'TouchAction.press.moveTo',
	'com.daxiang.action.appium.SwipeScreen',
	1,
	0,
	'[{"name":"startX","description":"X起点，范围0-1，如: 0.5，代表屏幕宽度一半的位置"},{"name":"startY","description":"Y起点，范围0-1，如：0.5，代表屏幕高度一半的位置"},{"name":"endX","description":"X终点，范围0-1，如: 0.5，代表屏幕宽度一半的位置"},{"name":"endY","description":"Y终点，范围0-1，如: 0.5，代表屏幕高度一半的位置"}]'
);

-- 14.SwipeInElement
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`params`
)
VALUES
(
	14,
	'元素容器内滑动',
	'TouchAction.press.moveTo',
	'com.daxiang.action.appium.SwipeInElement',
	1,
	0,
	'[{"name":"webElement","description":"元素容器"},{"name":"startX","description":"X起点，范围0-1，如: 0.5，代表元素容器宽度一半的位置"},{"name":"startY","description":"Y起点，范围0-1，如：0.5，代表元素容器高度一半的位置"},{"name":"endX","description":"X终点，范围0-1，如: 0.5，代表元素容器宽度一半的位置"},{"name":"endY","description":"Y终点，范围0-1，如: 0.5，代表元素容器高度一半的位置"}]'
);

-- 15.SwipeScreenFindElement
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	15,
	'滑动屏幕查找元素',
	'1.AppiumDriver.findElement 2.TouchAction.press.moveTo',
	'com.daxiang.action.appium.SwipeScreenFindElement',
	1,
	1,
	'WebElement',
	'[{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"},{"name":"startX","description":"X起点，范围0-1，如: 0.5，代表屏幕宽度一半的位置"},{"name":"startY","description":"Y起点，范围0-1，如：0.5，代表屏幕高度一半的位置"},{"name":"endX","description":"X终点，范围0-1，如: 0.5，代表屏幕宽度一半的位置"},{"name":"endY","description":"Y终点，范围0-1，如: 0.5，代表屏幕高度一半的位置"},{"name":"maxSwipeCount","description":"最大滑动次数"}]'
);

-- 16.SwipeInElementFindElement
INSERT INTO `action` (
	`id`,
	`name`,
	`description`,
	`class_name`,
	`need_driver`,
	`has_return_value`,
	`return_value_desc`,
	`params`
)
VALUES
(
	16,
	'元素容器内滑动查找元素',
	'1.AppiumDriver.findElement 2.TouchAction.press.moveTo',
	'com.daxiang.action.appium.SwipeInElementFindElement',
	1,
	1,
	'WebElement',
	'[{"name":"webElement","description":"容器元素"},{"name":"findBy","description":"查找方式","possibleValues":[{"value":"id","description":"MobileBy.id"},{"value":"AccessibilityId","description":"MobileBy.AccessibilityId"},{"value":"xpath","description":"MobileBy.xpath"},{"value":"AndroidUIAutomator","description":"MobileBy.AndroidUIAutomator"},{"value":"iOSClassChain","description":"MobileBy.iOSClassChain"},{"value":"iOSNsPredicateString","description":"MobileBy.iOSNsPredicateString"},{"value":"image","description":"MobileBy.image"}]},{"name":"value","description":"查找值"},{"name":"startX","description":"X起点，范围0-1，如: 0.5，代表容器元素宽度一半的位置"},{"name":"startY","description":"Y起点，范围0-1，如：0.5，代表容器元素高度一半的位置"},{"name":"endX","description":"X终点，范围0-1，如: 0.5，代表容器元素宽度一半的位置"},{"name":"endY","description":"Y终点，范围0-1，如: 0.5，代表容器元素高度一半的位置"},{"name":"maxSwipeCount","description":"最大滑动次数"}]'
);