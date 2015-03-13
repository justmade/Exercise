package PlayerListArrayTest
{

	public class PlayList
	{
		
		private var _songs:Array;
		private var _currentSort:SortProperty = null;
		private var _needToSort:Boolean = false;


		
		public function PlayList()
		{
			this._songs = new Array();
			this.sortList(SortProperty.TITLE);
		}


		
		public function get songList():Array
		{
			if (this._needToSort)
			{
				var oldSort:SortProperty = this._currentSort;
				this._currentSort = null;
				this.sortList(oldSort);
			}
			return this._songs;
		}
		
		
		/**
		 * Adds a song to the playlist
		 */
		public function addSong(song:Song):void
		{
			this._songs.push(song);
			this._needToSort = true;
 		}

		public function sortList(sortProperty:SortProperty):void
		{
			if (sortProperty == this._currentSort)
			{
				return;
			}

			var sortOptions:uint;
			switch (sortProperty)
			{
				case SortProperty.TITLE:
					sortOptions = Array.CASEINSENSITIVE;
					break;
				case SortProperty.ARTIST:
					sortOptions = Array.CASEINSENSITIVE;
					break;
				case SortProperty.YEAR:
					sortOptions = Array.NUMERIC;
					break;
			}
			
			this._songs.sortOn(sortProperty.propertyName, sortOptions);
			
			this._currentSort = sortProperty;

			this._needToSort = false;
		}
	}
}