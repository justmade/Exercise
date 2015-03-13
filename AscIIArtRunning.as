package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	import AscIIArt.code.AsciiArtBuilder;

	public class AscIIArtRunning extends Sprite
	{
		private var  asciiArtBuild:AsciiArtBuilder
		public function AscIIArtRunning()
		{
			asciiArtBuild = new AsciiArtBuilder();
			asciiArtBuild.addEventListener("ready",onReadyComplete);
		}
		private function onReadyComplete(e:Event):void{
			var tf:TextField = new TextField();
			tf.text = asciiArtBuild.asciiArtText;
			tf.width = tf.textWidth + 5 ;
			tf.height = tf.textHeight + 5; 
			this.addChild(tf);
			tf.scaleX = tf.scaleY = .5
				
			trace(asciiArtBuild.asciiArtText)
			
			//================debug===================//;
			/*
			+~-,                                                                                                
			~;.                                                                                                 
				.                                                                                                   
			
			-                               
                                                                    1C                              
			~)}{                             
				{r{z                             
					<)vz                            
					>U11n                           
						;ULx                           
					)tfZ                          
					CU0O                         
					/CZLZzI                      
					z/z{zZkJI                    
						,.lxQhh0}I                  
					,-1!1+lj1[                 
						;li|J[v1                
							}.   .~. ,L/>)_               
					>+        ,Jl_i>               
						;  +        if~?|!               
					)! .         {,>l(i               
						<)/i         !l.lil                
							?]{t        ,<{I{Il|                
								ucvf,]      -<i(]vt|-                
									v)1Cr+,<.<    ;~(?tzz/                 
										f1n?jCu- <     ,i+~/Irr                  
										l]cjJYxz< .      <i|)cI[c                   
											u1[tUOOUJ}C?       ?))!x(zj                    
												-vI|czO0ZYXYx_.~       -(}c|uzf                     
					c|+?uzXZXXYUYJ}v/[/,_< ,<>/[}r|ccuu                      
						+]|>+_>+1uUOZO0OOOUfxI>_[/lI!l<_?<l{c]v[vru|                       
							?r{|I>!<l+_/(fJLjjLYYZZLn(<-l~!>zu..,~>,  >l?]}{fLj]]x                         
								{<~(tZZ0OZQOOZYCJutn][vr{}(Il    ft           _uuuxCCfn?z,                          
									,ICUn|Iii><><++_+<><_<~<{1!__+_<<           /~~uxrvzOUZvI1                             
									,~r/++~~~<~<l~--_;-,+,-~~>+}!!><_,+. ,     ~]jCzxjzuCfu|{|/                               
										~+?l><~-;[_~-_++>~!..-,~,.,._;,~<-~_+  ..,~1,  Ic}]zUJv(v[I>~~                                 
											O[i<>+~-__!|]}|/?i!<-;.;     -  ,I_-llI<<l)uu(czYf|/1xfn1I?-                                    
												fzaXnU+.+)LtCjftjLXUJUJJULxznuvxxjJCYfjtxjc}(vc{r1/(/i!-                                        
													<<+_-IC>(CQaQQZZUYUYCfxu[{ru|I?!1[vrzr}/|!<)/??l~                                              
														+<i!,-,~~I>|II+-,,... ,i+i+?-+i<-                                                     
														;;,                                                                          
														*/
			
		}
	}
}