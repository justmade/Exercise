package XMLTest
{
	public class XML_Test_One
	{
		public function XML_Test_One()
		{
//			XML.ignoreComments = false;
//			XML.ignoreProcessingInstructions = false;
//			var x1:XML =
//				<order>
//				<!--This is a comment. -->
//				<?PROC_INSTR sample ?>
//				<item id='1'>
//				<menuName>burger</menuName>
//				<price>3.95</price>
//				</item>
//				<item id='2'>
//				<menuName>fries</menuName>
//				<price>1.45</price>
//				</item>
//				</order>
//
//			var x2:XML = x1.comments()[0];
//			var x3:XML = x1.processingInstructions()[0];
			
			
//			var x:XML =
//				<body>
//				<p>Paragraph 1</p>
//				<p>Paragraph 2</p>
//				</body>
//				var newNode:XML = <p>Paragraph 1.5</p>
//				x = x.insertChildAfter(x.p[0], newNode)
//				x = x.insertChildBefore(x.p[2], <p>Paragraph 1.75</p>)
//					
//				trace("xml",x)
			
			
			var myXML:XML =
				<order>
				<item id='1' quantity='2'>
				<menuName>burger</menuName>
				<price>3.95</price>
				</item>
				<item id='2' quantity='2'>
				<menuName>fries</menuName>
				<price>1.45</price>
				</item>
				</order>;
			
			var total:Number = 0;
			for (var pname:String in myXML.item)
			{
				total += myXML.item.@quantity[pname] * myXML.item.price[pname];
//				trace("pname",pname,myXML.item)
			}
			
			var total2:Number = 0;
			for each (var prop:XML in myXML.item)
			{
				total2 += prop.@quantity * prop.price;
			}
		}
	}
}