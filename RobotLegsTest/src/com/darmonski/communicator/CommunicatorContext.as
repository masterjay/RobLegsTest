package com.darmonski.communicator
{
	import com.darmonski.communicator.model.CommunicatorModel;
	import com.darmonski.communicator.view.CommunicatorView;
	import com.darmonski.communicator.view.MessageCounter;
	import com.darmonski.communicator.view.MessageCounterMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	public class CommunicatorContext extends Context
	{
		public function CommunicatorContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super();
		}
		
		override public function startup():void
		{
			//model
			injector.mapSingleton(CommunicatorModel);
			
			//views
			mediatorMap.mapView(CommunicatorView,CommunicatorMediator);
			mediatorMap.mapView(MessageCounter,MessageCounterMediator);
			super.startup();
		}
	}
}