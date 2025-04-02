	   var currTab = 1;
       var runTab;
	
	   function showTab(elm,num,total) {
			for(i=1;i<=total;i++) {
				document.getElementById(elm+"_"+i).className = "" ;
			}
			document.getElementById(elm+"_"+num).className = "select" ;
		}
		function showSub(elm,num,total) {
			for (i=1;i<=total;i++) {
				document.getElementById(elm+"_sub"+i).style.display = "none" ;
			}
			document.getElementById(elm+"_sub"+num).style.display = "block" ;
		}

		function showRank(elm,num,total) {
			showTab(elm,num,total) ;
			showSub(elm,num,total) ;
			//showImage(num) ;
			document.body.focus();
		}
		function playnext(){
				if(currTab==4){
					currTab = 1;
				}
				else{
					currTab++;
				};
				showRank('rank4',currTab,4);
				showRank('rank3',currTab,4);
				showRank('rank5',currTab,4);
				showRank('rank6',currTab,4);
				playTab();
		}
		function playTab(){
			   runTab = setTimeout(playnext,9000);
		}
	    window.onload = function(){
				playTab();
			}