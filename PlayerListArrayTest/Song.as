package PlayerListArrayTest
{
	
	public class Song
	{

		private var _title:String;
		private var _artist:String;
		private var _year:uint;
		private var _filename:String;
		private var _genres:String;
		public var icon:Object;


		public function Song(title:String, artist:String, year:uint, filename:String, genres:Array)
		{
			this._title = title;
			this._artist = artist;
			this._year = year;
			this._filename = filename;
			this._genres = genres.join(";");
		}



		public function get title():String
		{
			return this._title;
		}
		public function set title(value:String):void
		{
			this._title = value;
		}
		
		public function get artist():String
		{
			return _artist;
		}
		public function set artist(value:String):void
		{
			this._artist = value;
		}
		
		public function get year():uint
		{
			return _year;
		}
		public function set year(value:uint):void
		{
			this._year = value;
		}
		
		public function get filename():String
		{
			return _filename;
		}
		public function set filename(value:String):void
		{
			this._filename = value;
		}
		
		public function get genres():Array
		{
			return this._genres.split(";");
		}
		public function set genres(value:Array):void
		{
			this._genres = value.join(";");
		}


		public function toString():String
		{
			var result:String = "";
			result += this._title;
			result += " (" + this._year + ")";
			result += " - " + this._artist;
			if (this._genres != null && this._genres.length > 0)
			{
				result += " [" + this._genres.replace(";", ", ") + "]";
			}
			return result.toString();
		}
	}
}