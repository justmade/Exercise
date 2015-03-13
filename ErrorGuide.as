package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class ErrorGuide extends Sprite
	{
		public var employee:XML =
			<EmpCode>
				<costCenter>1234</costCenter>
				<costCenter>1-234</costCenter>
			</EmpCode>;
		
		public function ErrorGuide()
		{
			try
			{
				trace(employee.costCenter.length())
				if (employee.costCenter.length() != 1)
				{
					throw new Error("Error, employee must have exactly one cost center assigned.");
				}
			}
			catch (error:Error)
			{
				var errorMessage:TextField = new TextField();
				errorMessage.autoSize = TextFieldAutoSize.LEFT;
				errorMessage.textColor = 0xFF0000;
				errorMessage.text = error.message;
				addChild(errorMessage);
			}
		}
	}
}