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
