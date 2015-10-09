package;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author Bruno Santos
 */
class Screen extends Sprite
{

	public function new() 
	{
		super();
		
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		
	}
	
	private function onAddedToStage(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		
		var container = new Sprite();
		addChild(container);
		
		var backGrass = new Bitmap(Assets.getBitmapData('assets/grassback.png'));
		backGrass.smoothing = true;
		backGrass.cacheAsBitmap = true;
		
		var portrait = new Portrait();
		
		
		var grassBitmap = new Bitmap(Assets.getBitmapData('assets/grass.png'));
		grassBitmap.smoothing = true;
		grassBitmap.cacheAsBitmap = true;
		
		container.addChild(backGrass);
		container.addChild(portrait);
		container.addChild(grassBitmap);
		
		portrait.x = grassBitmap.x + (grassBitmap.width - portrait.frameBitmap.width) / 2;
		portrait.y = stage.stageHeight - portrait.frameBitmap.height;
		grassBitmap.y = stage.stageHeight - grassBitmap.height;
		
		backGrass.x += 40;
		backGrass.y = grassBitmap.y - 20;
	}
	
}