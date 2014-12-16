package com.darmonski.communicator.model
{
	import com.darmonski.communicator.events.MessageEvent;
	
	import org.robotlegs.mvcs.Actor;
	
	public class CommunicatorModel extends Actor
	{
		
		private var _message:Array = [];
		private var _msgCount:uint = 0;
		
		public function CommunicatorModel()
		{
			super();
		}
		
		public function addMessage(message:String):void
		{
			_message.push(message);
			_msgCount = _message.length
			dispatch(new MessageEvent(MessageEvent.MESSAGE_UPDATED));	
		}
		public function get msgCount():uint
		{
			return _msgCount;
		}

		public function set msgCount(value:uint):void
		{
			_msgCount = value;
			_msgCount = message.length
			dispatch(new MessageEvent(MessageEvent.MESSAGE_UPDATED));	
		}

		public function get message():Array
		{
			return _message;
		}

		public function set message(value:Array):void
		{
			_message = value;
		}

	}
}