const navbarLinks = document.querySelector(".navbar-links");
const toggleButton = document.querySelector(".toggle-button");

function toggleNav() {
	if (navbarLinks.classList.contains("active")) {
		navbarLinks.classList.remove("active");
		toggleButton.ariaExpanded = "false";
	} else {
		navbarLinks.classList.add("active");
		toggleButton.ariaExpanded = "true";
	}
}
