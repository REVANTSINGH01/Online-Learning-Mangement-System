const toggleBtn = document.getElementById('toggleBtn');
       const sidebar = document.querySelector('.sidebar');
       const mainContent = document.querySelector('.main-content');

       // Sidebar toggle functionality
       toggleBtn.addEventListener('click', () => {
           sidebar.classList.toggle('active');
           mainContent.classList.toggle('collapsed');
       });

       // Submit button functionality
       document.querySelectorAll('.btn-submit').forEach(button => {
           button.addEventListener('click', () => {
               alert('Submission feature coming soon!');
           });
       });