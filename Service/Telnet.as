package Service
{
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.Socket;
	import flash.system.Security;
	import flash.utils.ByteArray;

	public class Telnet
	{
		private var serverURL:String;
		private var portNumber:int;
		private var socket:Socket;
		private var state:int = 0;
		
		public function Telnet(server:String, port:int)
		{
			serverURL = server;
			portNumber = port;
			
			socket = new Socket();
			socket.addEventListener(Event.CONNECT, connectHandler);
			socket.addEventListener(Event.CLOSE, closeHandler);
			socket.addEventListener(ErrorEvent.ERROR, errorHandler);
			socket.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			socket.addEventListener(ProgressEvent.SOCKET_DATA, dataHandler);
			
			Security.loadPolicyFile("http://" + serverURL + "/crossdomain.xml");
			try {
				msg("Trying to connect to " + serverURL + ":" + portNumber + "\n");
				socket.connect(serverURL, portNumber);
			} catch (error:Error) {
				msg(error.message + "\n");
				socket.close();
			}
		}
		
		public function ioErrorHandler(event:IOErrorEvent):void {
			msg("Unable to connect: socket error.\n");
		}
		
		public function writeBytesToSocket(ba:ByteArray):void {
			socket.writeBytes(ba);
			socket.flush();
		}
		
		private function connectHandler(event:Event):void {
			if (socket.connected) {
				msg("connected...\n");
			} else {
				msg("unable to connect\n");
			}
		}
		
		private function closeHandler(event:Event):void {
			msg("closed...\n");
		}
		
		private function errorHandler(event:ErrorEvent):void {
			msg(event.text + "\n");
		}
		
		
		private function dataHandler(event:ProgressEvent):void {
			var n:int = socket.bytesAvailable;
			while (--n >= 0) {
				var b:int = socket.readUnsignedByte();
			}
		}
		
		private function msg(value:String):void {
			trace("Message:"+value);
		}
	}
}