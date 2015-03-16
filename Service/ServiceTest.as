package Service
{
	import flash.events.StatusEvent;
	import flash.net.URLRequest;
	
	import air.net.ServiceMonitor;
	import air.net.SocketMonitor;
	import air.net.URLMonitor;

	public class ServiceTest
	{
		public function ServiceTest()
		{
			//用于检测服务器是否连接
			var s:ServiceMonitor = new ServiceMonitor();
			//ServiceMonitor的子类
			URLMonitor;
			SocketMonitor;
			
			var monitor:URLMonitor;
			monitor = new URLMonitor(new URLRequest('http://www.example.com'));
			monitor.addEventListener(StatusEvent.STATUS, announceStatus);
			monitor.start();
			function announceStatus(e:StatusEvent):void {
				trace("Status change. Current status: " + monitor.available);
			}
			
			var socketMonitor:SocketMonitor;
			socketMonitor = new SocketMonitor('www.example.com',6667);
			socketMonitor.addEventListener(StatusEvent.STATUS, socketStatusChange);
			socketMonitor.start();
			function socketStatusChange(e:StatusEvent):void {
				trace("Status change. Current status: " + socketMonitor.available);
			}
		}
	}
}