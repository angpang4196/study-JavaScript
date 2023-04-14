/**
 * 
 */
document.getElementById("bt").onclick = function() {
	const detail = document.getElementById("datail");
	if (detail.style.display == "") {
		detail.style.display = "none";
	} else {
		detail.style.display = "";
	}
}