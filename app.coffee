# Framer.Device.customize
#     screenWidth: 750
#     screenHeight: 750
# 
# Framer.Defaults.Animation = 
# 	time: 0.8
# 	curve: 'ease-out'
# 
# scaleFactor = Screen.width / window.innerWidth
# 
# Framer.Device.deviceScale = scaleFactor

wrapper = new Layer
	size: Screen.size
	backgroundColor: '#f0f0f0'

layer1 = new Layer
	parent: wrapper
	x: 175
	width: 100
	height: 300
	backgroundColor: 'transparent'

Utils.labelLayer(layer1, '2')
layer1.style = 
	color: 'black'
	fontSize: '100px'
	fontFamily: 'Futura'
layer1.centerY()


layer2 = new Layer
	parent: wrapper
	x: 175 + 100
	width: 100
	height: 300
	backgroundColor: 'transparent'

Utils.labelLayer(layer2, '0')
layer2.style = 
	color: 'black'
	fontSize: '100px'
	fontFamily: 'Futura'
layer2.centerY()

layer3 = new Layer
	parent: wrapper
	x: 175 + 200
	width: 100
	height: 300
	backgroundColor: 'transparent'

Utils.labelLayer(layer3, '2')
layer3.style = 
	color: 'black'
	fontSize: '100px'
	fontFamily: 'Futura'
layer3.centerY()


layer4 = new Layer
	parent: wrapper
	x: 175 + 300
	width: 100
	height: 300
	backgroundColor: 'transparent'

Utils.labelLayer(layer4, '3')
layer4.style = 
	color: 'black'
	fontSize: '100px'
	fontFamily: 'Futura'
layer4.centerY()

layer5 = new Layer
	parent: wrapper
	x: 175 + 300
	width: 100
	height: 300
	backgroundColor: 'transparent'
	opacity: 0
	blur: 40

Utils.labelLayer(layer5, '4')
layer5.style = 
	color: 'black'
	fontSize: '100px'
	fontFamily: 'Futura'
layer5.centerY()

wrapper.onClick ->
	layer4.animate
		blur: 40
	layer4.onAnimationEnd ->
		layer4.animate
			opacity: 0
		layer5.animate
			opacity: 1
			blur: 0