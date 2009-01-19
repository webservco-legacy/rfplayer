/**
*
* rfPlayer : Rudimentary FLV Player
*
* @author     Radu Maier <radu@rudisoft.net>
* @copyright  Copyright (c) 2009, Radu Maier
* @version    1.0.0-090119
* @since      16:25 2009-01-15
*/ 

// init
import fl.video.VideoEvent;

// load FlashVars
var FlashVars:Object = this.root.loaderInfo.parameters;

// external image
var flvimg = 'rfPlayer_480.jpg';
if(FlashVars.flvimg != undefined) {
	flvimg = FlashVars.flvimg;
}
// video - autoplay
flv.autoPlay = false;
if(FlashVars.flvplay != undefined) {
	switch(FlashVars.flvplay) {
		case 'false' : {
			flv.autoPlay = false;
			break;
		}
		case 'true' : {
			flv.autoPlay = true;
			break;
		}
		default : {
			flv.autoPlay = false;
			break;
		}
	}
}
// video - skin
flv.skin = 'rfPLayerSkin.swf';
if(FlashVars.flvskin != undefined) {
	flv.skin = FlashVars.flvskin;
}
// video - skin bg alpha
flv.skinBackgroundAlpha = 1;
if(FlashVars.flvskinbga != undefined) {
	flv.skinBackgroundAlpha = FlashVars.flvskinbga;
}
// video - skin bg color
flv.skinBackgroundColor = 0x000000;
if(FlashVars.flvskinbg != undefined) {
	flv.skinBackgroundColor = FlashVars.flvskinbga;
}
// video - volume
flv.volume = 1;
if(FlashVars.flvolume != undefined) {
	flv.volume = FlashVars.flvolume;
}
// video - source
flv.source = 'rfPlayer_480.flv';
if(FlashVars.flvurl != undefined) {
	flv.source = FlashVars.flvurl;
}
// captions - autostart
flvcaps.showCaptions = false;
if(FlashVars.flvcapson != undefined) {
	switch(FlashVars.flvcapson) {
		case 'false' : {
			flvcaps.showCaptions = false;
			break;
		}
		case 'true' : {
			flvcaps.showCaptions = true;
			break;
		}
		default : {
			flvcaps.showCaptions = false;
			break;
		}
	}
}
// captions - source
flvcaps.source = 'rfPlayer.xml';
if(FlashVars.flvcapsurl != undefined) {
	flvcaps.source = FlashVars.flvcapsurl;
}

// IMAGE
var img = new Loader();
img.load(new URLRequest(flvimg));
addChild(img);
img.addEventListener(MouseEvent.CLICK, playFLV);
// VIDEO
flv.addEventListener(VideoEvent.PLAYING_STATE_ENTERED, hideImg);
//flv.addEventListener(VideoEvent.PAUSED_STATE_ENTERED, showImg);
flv.addEventListener(VideoEvent.STOPPED_STATE_ENTERED, showImg);
flv.addEventListener(VideoEvent.COMPLETE, showImg);

// METHODS
function playFLV(event:MouseEvent):void {
	flv.play();
}
function hideImg(event:Event):void {
	img.visible = false;
}
function showImg(event:Event):void {
	flv.seek(0);
	img.visible = true;
}