const monthYear = document.getElementById('monthYear');
        const daysContainer = document.getElementById('days');
        const toggleBtn = document.getElementById('toggleBtn');
        const sidebar = document.querySelector('.sidebar');
        const mainContent = document.querySelector('.main-content');
        
        // Initialize the sidebar and main content for the first time
        let currentMonth = new Date().getMonth();
        let currentYear = new Date().getFullYear();

        // Sidebar toggle functionality
        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('active');
            mainContent.classList.toggle('collapsed');
        });

        // Function to switch between months
        function prevMonth() {
            if (currentMonth === 0) {
                currentMonth = 11;
                currentYear -= 1;
            } else {
                currentMonth -= 1;
            }
            updateCalendar();
        }

        function nextMonth() {
            if (currentMonth === 11) {
                currentMonth = 0;
                currentYear += 1;
            } else {
                currentMonth += 1;
            }
            updateCalendar();
        }

        function updateCalendar() {
            const months = [
                'January', 'February', 'March', 'April', 'May', 'June',
                'July', 'August', 'September', 'October', 'November', 'December'
            ];
            monthYear.textContent = `${months[currentMonth]} ${currentYear}`;

            // Clear previous days
            daysContainer.innerHTML = '';

            // Get the number of days in the current month
            const daysInMonth = new Date(currentYear, currentMonth + 1, 0).getDate();

            // Get the starting day of the week for the current month
            const startDay = new Date(currentYear, currentMonth, 1).getDay();

            // Add empty days before the first day of the month
            for (let i = 0; i < startDay; i++) {
                const emptyDay = document.createElement('div');
                emptyDay.classList.add('day');
                daysContainer.appendChild(emptyDay);
            }

            // Add actual days of the month
            for (let i = 1; i <= daysInMonth; i++) {
                const dayElement = document.createElement('div');
                dayElement.classList.add('day');
                dayElement.textContent = i;

                // Mark today's date
                if (i === new Date().getDate() && currentMonth === new Date().getMonth() && currentYear === new Date().getFullYear()) {
                    dayElement.classList.add('today');
                }

                daysContainer.appendChild(dayElement);
            }
        }

        updateCalendar();

        // Sidebar Link Active State
        const links = document.querySelectorAll('.nav-link');
        links.forEach(link => {
            link.addEventListener('click', function () {
                links.forEach(l => l.classList.remove('active'));
                this.classList.add('active');
            });
        });