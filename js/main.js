try {
  const navItem = document.querySelector(".nav__items");
  const openNavBtn = document.querySelector("#open__nav-btn");
  const closeNavBtn = document.querySelector("#close__nav-btn");
  const openNav = () => {
    navItem.style.display = "flex";
    openNavBtn.style.display = "none";
    closeNavBtn.style.display = "inline-block";
  };
  const closeNav = () => {
    navItem.style.display = "none";
    openNavBtn.style.display = "inline-block";
    closeNavBtn.style.display = "none";
  };
  openNavBtn.addEventListener("click", openNav);
  closeNavBtn.addEventListener("click", closeNav);
} catch (error) {
  //   console.error("Error occurred in toggle functionality:", error);
}
if (window.innerWidth <= 600)
  try {
    const sidebar = document.querySelector("aside");
    const showSidebarBtn = document.querySelector("#show__sidebar-btn");
    const hideSidebarBtn = document.querySelector("#hide__sidebar-btn");

    const showSidebar = () => {
      sidebar.style.left = "0";
      showSidebarBtn.style.display = "none";
      hideSidebarBtn.style.display = "inline-block";
    };

    const hideSidebar = () => {
      sidebar.style.left = "-100%";
      showSidebarBtn.style.display = "inline-block";
      hideSidebarBtn.style.display = "none";
    };

    showSidebarBtn.addEventListener("click", showSidebar);
    hideSidebarBtn.addEventListener("click", hideSidebar);

    window.onload = showSidebar;
  } catch (error) {
    //   console.error("Error occurred in sidebar functionality:", error);
  }

  
  function toggleGoButton() {
    var input = document.getElementById("searchInput");
    var goButton = document.getElementById("goButton");
    goButton.disabled = input.value.trim() === ""; // Menonaktifkan tombol jika input kosong atau hanya berisi spasi
  }

  function validateSearch() {
    var input = document.getElementById("searchInput").value.trim();
    if (input === "") {
      // Menampilkan pesan atau tindakan lain jika input kosong
      alert("Please enter a search query.");
      return false; // Mencegah pengiriman form jika input kosong
    }
    return true;
  }


// COUNTUP
const counts = document.querySelectorAll(".count");
const speed = 97;
const options = {
  threshold: 0.5,
};
const observer = new IntersectionObserver((entries, observer) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add("visible");
      upDate(entry.target);
      observer.unobserve(entry.target);
    }
  });
}, options);
counts.forEach((counter) => {
  observer.observe(counter);
});
function upDate(counter) {
  const target = Number(counter.getAttribute("data-target"));
  const count = Number(counter.innerText);
  const inc = target / speed;
  if (count < target) {
    counter.innerText = Math.floor(inc + count);
    setTimeout(() => upDate(counter), 15);
  } else {
    counter.innerText = target;
  }
}

// ABOUT TABS
var tabButton = document.getElementsByClassName("tab"),
  tabContent = document.getElementsByClassName("tab-content");
tabButton[0].classList.add("active");
tabContent[0].style.display = "block";
function tabsection(e, x) {
  var i;
  for (i = 0; i < tabButton.length; i++) {
    tabContent[i].style.display = "none";
    tabButton[i].classList.remove("active");
  }
  document.getElementById(x).style.display = "block";
  e.currentTarget.classList.add("active");
}

// TESTIMONIAL
$(".testimonials-container").owlCarousel({
  loop: true,
  autoplay: false,
  autoplayTimeout: 6000,
  margin: 10,
  nav: true,
  navText: [
    "<i class='fa-solid fa-arrow-left'></i>",
    "<i class='fa-solid fa-arrow-right'></i>",
  ],
  responsive: {
    0: {
      items: 1,
      nav: false,
    },
    600: {
      items: 1,
      nav: true,
    },
    768: {
      items: 2,
    },
  },
});




// GALLERY
/*!
Swaying photo gallery - scroll event
Created on AUGUST 29, 2023
Copyright (c) 2023 by Wakana Y.K. (https://codepen.io/wakana-k/pen/WNLrWMm)
*/
/*
Related works : 
Portforio design @wakana-k - https://codepen.io/wakana-k/pen/BaxKKvE
Swaying photo gallery - hover event @wakana-k - https://codepen.io/wakana-k/pen/oNJxbPw
*/
"use strict";
(function () {
	window.onload = () => {
		const obj = document.querySelector("#gallery");
		const time = 10000;
		function animStart() {
			if (obj.classList.contains("active") == false) {
				obj.classList.add("active");
				setTimeout(() => {
					animEnd();
				}, time);
			}
		}
		function animEnd() {
			obj.classList.remove("active");
			obj.offsetWidth;
		}
		document.addEventListener("scroll", function () {
			// scroll or scrollend
			animStart();
		});
		window.addEventListener("resize", animStart);
		animStart();
	};
})();
