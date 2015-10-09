package;


import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.events.Event;
import Portrait;


class Main extends Sprite {
	
	var gameMain:Sprite;
	
	public function new () {
		
		super ();
		
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	private function onAddedToStage(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		
		gameMain = new Sprite();
		var _mask = new Shape();
		_mask.graphics.beginFill(0xffffff, 1);
		_mask.graphics.drawRect(0, 0, stage.stageWidth, stage.stageHeight);
		_mask.graphics.endFill();
		addChild(_mask);
		
		// this line makes the difference
		gameMain.mask = _mask;
		// -----------
		addChild(gameMain);
		
		var screen = new Screen();
		gameMain.addChild(screen);
	}
	
	
}