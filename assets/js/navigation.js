const navbarLinks = document.querySelector(".navbar-links");

function toggleNav() {
	if (navbarLinks.classList.contains("active")) {
		navbarLinks.classList.remove("active");
	} else {
		navbarLinks.classList.add("active");
	}
}
