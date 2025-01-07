document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission

    // Get form elements
    const username = document.getElementById('username');
    const password = document.getElementById('password');

    // Demo credentials
    const demoUsername = 'admin';
    const demoPassword = 'admin'; // Change this to your desired password

    // Simple validation
    if (username.value.trim() === '') {
        username.classList.add('is-invalid');
    } else {
        username.classList.remove('is-invalid');
    }

    if (password.value.trim() === '') {
        password.classList.add('is-invalid');
    } else {
        password.classList.remove('is-invalid');
    }

    // Check credentials
    if (username.value.trim() === demoUsername && password.value.trim() === demoPassword) {
        alert('Login successful!'); // Redirect to another page (e.g., dashboard.jsp)
        window.location.href ='dashboard.jsp'; // Create this file for the dashboard
    } else {
        alert('Invalid username or password. Please try again.');
    }
});
document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.querySelector('.sidebar');
    const content = document.querySelector('.content');
    const entityButtons = document.querySelectorAll('.entity-button');

    // Mobile menu toggle
    function toggleMobileMenu() {
        sidebar.classList.toggle('mobile-open');
        content.classList.toggle('sidebar-active');
    }

    // Create mobile menu toggle button
    function createMobileMenuToggle() {
        const mobileToggle = document.createElement('button');
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
        mobileToggle.classList.add('mobile-menu-toggle');
        mobileToggle.addEventListener('click', toggleMobileMenu);
        
        const navbar = document.querySelector('.navbar .container-fluid');
        navbar.insertBefore(mobileToggle, navbar.firstChild);
    }

    // Responsive breakpoint handling
    function handleResponsiveness() {
        const width = window.innerWidth;
        
        if (width < 768) {
            // Mobile layout
            if (!document.querySelector('.mobile-menu-toggle')) {
                createMobileMenuToggle();
                sidebar.classList.add('mobile-sidebar');
                
                // Close sidebar when a menu item is clicked
                entityButtons.forEach(button => {
                    button.addEventListener('click', () => {
                        sidebar.classList.remove('mobile-open');
                        content.classList.remove('sidebar-active');
                    });
                });
            }
        } else {
            // Desktop layout
            const mobileToggle = document.querySelector('.mobile-menu-toggle');
            if (mobileToggle) {
                mobileToggle.remove();
            }
            sidebar.classList.remove('mobile-sidebar', 'mobile-open');
            content.classList.remove('sidebar-active');
        }
    }

    // Initial responsiveness check
    handleResponsiveness();

    // Recheck on window resize
    window.addEventListener('resize', handleResponsiveness);

    window.onload = function() {
        // Prevent page from being cached
        window.history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function() {
            // Redirect to login page if back button is pressed
            window.location.reload();
        });
    }
});