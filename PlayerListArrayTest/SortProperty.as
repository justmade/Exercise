package  PlayerListArrayTest
{
	public final class SortProperty
	{
		public static const TITLE:SortProperty = new SortProperty("title");
		public static const ARTIST:SortProperty = new SortProperty("artist");
		public static const YEAR:SortProperty = new SortProperty("year");

		
		private var _propertyName:String;


		
		public function SortProperty(property:String)
		{
			_propertyName = property;
		}


		
		public function get propertyName():String
		{
			return _propertyName;
		}
	}
}