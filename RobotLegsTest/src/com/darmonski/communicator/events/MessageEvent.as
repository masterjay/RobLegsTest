package com.darmonski.communicator.events
{
	import flash.events.Event;
	
	public class MessageEvent extends Event
	{
		public static const MESSAGE_UPDATED:String = "MESSAGE_UPDATED";
		public function MessageEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			return MessageEvent(type);
		}
	}
}