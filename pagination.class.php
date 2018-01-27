<?php
/*
Author : Sunil Bhatt
*/
class sbpagination
{
	public $perpage;
	function __construct()
	{
		$this->perpage = 10;
	}

	function getAllPageLinks($count)
	{
		$output = '';
		if(!isset($_GET["page"])) $_GET["page"] = 1;
		if($this->perpage != 0)
			$pages  = ceil($count/$this->perpage);
		if($pages>1) {
			if($_GET["page"] == 1) 
				$output = $output . '<li class="page-item disabled"><a href="javascript:void(0);" class="link first disabled">&#8810;</a></li><li class="page-item disabled"><a href="javascript:void(0);" class="link disabled">&#60;</span></li>';
			else	
				$output = $output . '<li class="page-item"><a href="javascript:void(0);" class="link first page" data-page="'.(1).'" >&#8810;</a></li><li class="page-item"><a href="javascript:void(0);" class="page-link page" data-page="'.($_GET["page"]-1).'" >&#60;</a></li>';
			
			if ($_GET["page"]<4)
			{
				$start 	= 1;
				$end 	= 5;
			}
			else
			{
				$start 	= ($_GET["page"]-2);
				$end 	= ($_GET["page"]+2);
			}
			
			$endpage = ($pages-3);
			if ($_GET["page"]>$endpage)
			{
				$start 	= ($pages-4);
			}

			for($i=$start; $i<=$end; $i++)	
			{
				if($i<1) continue;
				if($i>$pages) break;
				if($_GET["page"] == $i)
				{
					$output = $output . '<li class="page-item active"><a href="javascript:void(0);" id='.$i.' class="link current">'.$i.'</a></li>';
				}
				else
				{				
					$output = $output . '<li class="page-item"><a href="javascript:void(0);" class="page-link page" data-page="'.$i.'" >'.$i.'</a></li>';
				}
			}
			
			if($_GET["page"] < $pages)
				$output = $output . '<li class="page-item"><a href="javascript:void(0);" class="page-link page" data-page="'.($_GET["page"]+1).'" >></a></li><li href="javascript:void(0);" class="page-item"><a href="javascript:void(0);" class="page-link page" data-page="'.($pages).'" >&#8811;</a>';
			else				
				$output = $output . '<li class="page-item disabled"><a href="javascript:void(0);" class="link disabled">></a></li><li class="page-item disabled"><a href="javascript:void(0);" class="link disabled">&#8811;</a></li>';
			
		}
		return $output;
	}
}
?>