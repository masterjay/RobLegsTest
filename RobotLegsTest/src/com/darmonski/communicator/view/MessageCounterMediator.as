package com.darmonski.communicator.view
{
	import com.darmonski.communicator.events.MessageEvent;
	import com.darmonski.communicator.model.CommunicatorModel;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MessageCounterMediator extends Mediator
	{
		public function MessageCounterMediator()
		{
			super();
		}
		[Inject]
		public var view:MessageCounter
		[Inject]
		public var communicatorModel:CommunicatorModel
		[Inject]
		public var communicatorView:CommunicatorView
		
		override public function onRegister():void
		{
			view.msgCount.text = "0";
			eventMap.mapListener(view.ClearAll,MouseEvent.CLICK,clearAllMessages);
			eventMap.mapListener(eventDispatcher,MessageEvent.MESSAGE_UPDATED,updateCounter);
		}
		
		private function clearAllMessages(e:MouseEvent):void
		{
	//		communicatorModel.message=[];
	//		communicatorView.messageTA.text="";
		}
		
		private function updateCounter(e:MessageEvent):void
		{
			view.msgCount.text = communicatorModel.msgCount.toString();
		}
	}
}