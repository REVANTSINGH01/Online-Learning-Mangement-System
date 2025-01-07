const toggleBtn = document.getElementById('toggleBtn');
        const sidebar = document.querySelector('.sidebar');
        const mainContent = document.querySelector('.main-content');
        const editProfileBtn = document.getElementById('editProfileBtn');

        // Sidebar toggle functionality
        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('active');
            mainContent.classList.toggle('collapsed');
        });

        // Edit Profile Button Functionality
        editProfileBtn.addEventListener('click', () => {
            const inputs = document.querySelectorAll('.form-control');
            const isReadOnly = inputs[0].readOnly;

            inputs.forEach(input => {
                input.readOnly = !isReadOnly;
                input.classList.toggle('bg-white');
            });

            editProfileBtn.textContent = isReadOnly ? 'Save Changes' : 'Edit Profile';
        });

        // Sidebar Link Active State
        const links = document.querySelectorAll('.nav-link');
        links.forEach(link => {
            link.addEventListener('click', function () {
                links.forEach(l => l.classList.remove('active'));
                this.classList.add('active');
            });
        });