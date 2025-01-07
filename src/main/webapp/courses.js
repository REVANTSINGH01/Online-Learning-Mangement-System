const courseData = {
           course1: `<h2>Computer Organization</h2><p>Course description here...</p><button>Enroll</button>`,
           course2: `<h2>Data Structures</h2><p>Course description here...</p><button>Enroll</button>`,
           course3: `<h2>Design Thinking</h2><p>Course description here...</p><button>Enroll</button>`,
           course4: `<h2>Java Programming</h2><p>Course description here...</p><button>Enroll</button>`
       };

       function showDetails(courseId) {
           document.getElementById("course-details").innerHTML = courseData[courseId];
           document.getElementById("modal").style.display = "block";
       }

       function closeModal() {
           document.getElementById("modal").style.display = "none";
       }

       const toggleBtn = document.getElementById('toggleBtn');
       const sidebar = document.querySelector('.sidebar');
       const mainContent = document.querySelector('.main-content');

       toggleBtn.addEventListener('click', () => {
           sidebar.classList.toggle('active');
           mainContent.classList.toggle('collapsed');
       });

       window.onclick = function(event) {
           if (event.target == document.getElementById("modal")) {
               closeModal();
           }
       };