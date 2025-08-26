# E-Present

A presence website built with PHP, featuring token-based attendance for events. Designed for efficient and secure event attendance tracking.

## Features

- **Detect Multiple Devices:** Tracks and prevents duplicate attendance from different devices.
- **Detect Already Present:** Ensures a user cannot mark presence more than once for the same event.
- **Event Activation by Master:** Attendance is only available when a master account creates and activates an event.
- **Secret Master Login:** Hidden login page for master account for secure event management.
- **Manual Add Presence:** Master account can manually add or correct attendance records.

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/RendyPakeY/E-Present.git
   ```

2. **Setup PHP Environment**
   - Requires PHP (version X.X or higher)
   - Setup a web server (e.g., Apache, Nginx)
   - Configure database (MySQL recommended)
   - Update database credentials in `/config` or `.env` file

3. **Install Dependencies**
   - Run composer install (if using Composer)
   ```bash
   composer install
   ```

4. **Run the App**
   - Place the project in your server's web root directory
   - Access via `http://localhost/e-present` or your domain

## Usage

- **Master Account:** Log in via the secret page to create and manage events.
- **Participants:** Join events using the provided token and mark your presence. The app checks for device duplication and previous attendance.
- **Manual Add:** Master can add/correct attendance directly.

## Security

- Master login is hidden and protected.
- Event and attendance data are only accessible during an active event.

## Demo

- [Live Demo](https://e-present.rf.gd)
- [Repository](https://github.com/RendyPakeY/E-Present)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss.
