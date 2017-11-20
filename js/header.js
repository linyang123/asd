(()=>{
	ajax("get","../html/header1.html")
	.then(html=>{
		$("#header")[0].innerHTML=html;
		document.head.innerHTML=document.head.innerHTML+'<link rel="stylesheet" href="../css/header.css">';	
	});

})()
