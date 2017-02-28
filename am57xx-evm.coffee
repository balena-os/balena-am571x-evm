deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

AM571X_FLASH = 'Connect power to the <%= TYPE_NAME %> and then press the SW3 Power On button.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'am571x-evm'
	aliases: [ 'am571x-evm' ]
	name: 'AM571X EVM'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		AM571X_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM571X.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM571X.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM571X.md#on-mac-and-linux'

	supportsBlink: true

	yocto:
		machine: 'am57xx-evm'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-morty'
		deployArtifact: 'resin-image-flasher-am57xx-evm.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
