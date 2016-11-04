deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

AM57XX_FLASH = 'Connect power to the <%= TYPE_NAME %> and then press the SW3 Power On button.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'am57xx-evm'
	aliases: [ 'am57xx-evm' ]
	name: 'AM571X EVM'
	arch: 'armv7hf'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
		AM57XX_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM57XX.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM57XX.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-AM57XX.md#on-mac-and-linux'

	supportsBlink: true

	yocto:
		machine: 'am57xx-evm'
		image: 'resin-image-flasher'
		fstype: 'resin-sdcard'
		version: 'yocto-morty'
		deployArtifact: 'resin-image-flasher-am57xx-evm.resin-sdcard'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
