/**
* rfPlayer
*
* <I> ./rfPlayer.fla</I>
* <BR>Custom FLV player
*
* @author     Radu Maier <radu@rudisoft.net>
* @copyright  Copyright (c) 2009, Radu Maier
* @license    http://opensource.org/licenses/gpl-3.0.html
* @version    0.9.0-090115
* @since      16:25 2009-01-15
* @access     public
* @package    rfPlayer
* @todo       stuff
*/

// init
import fl.video.VideoEvent;
var paramList:Object = this.root.loaderInfo.parameters;

// functions
function showImg(event:Event):void {
	img.visible = true;
}
function hideImg(event:Event):void {
	img.visible = false;
}
function playFLV(event:MouseEvent):void {
	flv.play();
}
function stopFLV(event:Event):void {
	flv.stop();
}
function playPauseFLV(event:MouseEvent):void
{
   if( flv.playing ){
      flv.pause();
   }else{
      flv.play();
   }
}

// image
var flvimg = paramList.flvimg;
var img = new Loader();

addChild(img);
img.load(new URLRequest(flvimg));
img.addEventListener(MouseEvent.CLICK, playFLV);

// video
flv.skin = paramList.flvskin;
flv.skinBackgroundAlpha = paramList.flvskinbga;
flv.skinBackgroundColor = paramList.flvskinbg;
flv.volume = paramList.flvolume;
flv.autoPlay = paramList.flvplay;
flv.source = paramList.flvurl;

flv.addEventListener(VideoEvent.PLAYING_STATE_ENTERED, hideImg);
//flv.addEventListener(VideoEvent.PAUSED_STATE_ENTERED, showImg);
flv.addEventListener(VideoEvent.STOPPED_STATE_ENTERED, showImg);
flv.addEventListener(VideoEvent.COMPLETE, showImg);
flv.addEventListener(MouseEvent.CLICK, playPauseFLV);
// captions
flvcaps.showCaptions = paramList.flvcapson;
flvcaps.source = paramList.flvcapsurl;

flvcaps.addEventListener(Event.OPEN, stopFLV);