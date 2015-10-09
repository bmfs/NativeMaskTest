package ;

import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.Shape;
import openfl.display.Sprite;
/**
 * ...
 * @author Bruno Santos
 */
class Portrait extends Sprite
{
	
	public var container:Sprite;
	
	public var frame:Sprite;
	var frameMask:Shape;
	public var frameBitmap:Bitmap;
	
	public function new() 
	{
		super();
		
		container = new Sprite();
		addChild(container);
		
		frame = new Sprite();
		addChild(frame);
		
		frameBitmap = new Bitmap(Assets.getBitmapData('assets/frame.png'));
		frame.addChild(frameBitmap);
		
		frameMask = new Shape();
		
		addChild(frameMask);
		container.mask = frameMask;
		
		
		frameMask.graphics.beginFill(0xffffff, 1);
		frameMask.graphics.drawRect(0, 0, frameBitmap.width, frameBitmap.height);
		frameMask.graphics.endFill();
		
		
		
		var photoBitmap:Bitmap = new Bitmap(Assets.getBitmapData('assets/portrait.png'));
		container.addChild(photoBitmap);
		
		photoBitmap.x = (frameBitmap.width - photoBitmap.width) / 2;
		photoBitmap.y = frameBitmap.height - photoBitmap.height;
		
		
		container.addChild(frame);
	}
	
}