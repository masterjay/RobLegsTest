package com.darmonski.communicator
{
	import com.darmonski.communicator.events.MessageEvent;
	import com.darmonski.communicator.model.CommunicatorModel;
	import com.darmonski.communicator.view.CommunicatorView;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class CommunicatorMediator extends Mediator
	{
		public function CommunicatorMediator()
		{
			super();
		}
		[Inject]
		public var view:CommunicatorView
		
		[Inject]
		public var model:CommunicatorModel;
		override public function onRegister():void
		{
			eventMap.mapListener(view.go,MouseEvent.CLICK,goClicked);
			eventMap.mapListener(eventDispatcher,MessageEvent.MESSAGE_UPDATED,messageAdded);
		}
		
		private function goClicked(e:MouseEvent):void
		{
			model.addMessage(view.messageTI.text);
		}
		
		private function messageAdded(e:MessageEvent):void
		{
			view.messageTI.text = "";
			view.messageTA.text = model.message.join("\n");
		}
	}
}