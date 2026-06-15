# 📱 E-Present

[![PHP Version](https://img.shields.io/badge/PHP-%3E%3D%207.4-8892BF.svg?style=flat-square&logo=php)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-Database-blue?style=flat-square&logo=mysql)](https://www.mysql.com/)
[![FingerprintJS](https://img.shields.io/badge/Security-FingerprintJS-green?style=flat-square)](https://fingerprint.com/)
[![Hosting](https://img.shields.io/badge/Deployment-InfinityFree%20%2F%20Shared-orange?style=flat-square)](https://infinityfree.com/)

**E-Present** is a web-based digital attendance application built for the **E-ROM** extracurricular activity. It enables efficient, secure, and real-time attendance tracking using session tokens (event codes) and device fingerprint protection to prevent proxy attendance or duplication.

---

## 🚀 Key Features

*   🔒 **Multi-Device Detection (FingerprintJS):** Prevents duplicate attendance by tracking unique browser fingerprints. Users cannot register multiple times using different accounts on the same device or mark attendance for others.
*   🚫 **Duplicate Attendance Prevention:** Ensures a member cannot submit attendance more than once for the same active event.
*   ⏳ **Master-Controlled Events:** Attendance form is only accessible when a master account creates and activates an event with a specified expiration time.
*   🤫 **Secret Master Login:** Hidden admin/master login interface for enhanced security.
*   ✏️ **Manual Attendance Injection:** Master account can manually log or correct attendance records in case of technical issues.
*   📊 **Excel Report Export:** Download structured attendance reports in `.xlsx` format grouped by event date, powered by `PhpSpreadsheet`.

---

## 📁 Project Structure

The project directory is structured modularly:

```text
E-Present/
├── .gitignore                   # Ignores sensitive configs and system clutter
├── index.php                    # Landing/Welcome page
├── README.md                    # Project documentation
│
├── admin/
│   └── index.php                # Admin Dashboard (Master Panel)
│
├── assets/
│   ├── api/                     # Internal PHP APIs for AJAX requests
│   │   ├── addEvent.php         # Create new attendance events
│   │   ├── addMember.php        # Register new extracurricular members
│   │   ├── getExcel.php         # Export attendance database to Excel
│   │   ├── getName.php          # Fetch student names filtered by class
│   │   └── manualPresent.php    # Manually insert attendance by Admin
│   ├── css/
│   │   ├── style.css            # Stylesheets for client-side attendance form
│   │   └── style-admin.css      # Stylesheets for admin dashboard
│   ├── img/                     # Images, icons, and logos
│   └── js/
│       └── main.js              # Client-side script integrating FingerprintJS
│
├── content/                     # Dynamic UI sub-pages
│   ├── berhasil.php             # Success screen
│   ├── form.php                 # Attendance submission form
│   ├── login.php                # Validation routing for admin login
│   ├── validation.php           # Token and device verification middleware
│   ├── warning.php              # Status alert/warning template
│   └── welcome.php              # Welcome screen waiting for token entry
│
├── db/
│   └── e-present.sql            # MySQL Database schema dump
│
├── element/
│   ├── config.php               # Local DB credentials (IGNORED BY GIT)
│   ├── config.example.php       # Template database config for Git repo
│   ├── login.php                # Secret login form layout
│   └── logout.php               # Destroys session on admin logout
│
└── vendor/                      # Composer package folder (PhpSpreadsheet etc.)
```

---

## 🛠️ Installation & Setup Guide

### 1. Clone the Repository
```bash
git clone https://github.com/RendyPakeY/E-Present.git
cd E-Present
```

### 2. Configure Database
1. Create a new MySQL database (e.g., `e-present`).
2. Import the schema template `db/e-present.sql` into your new database.
3. Duplicate the configuration template inside `element/` folder:
   ```bash
   cp element/config.example.php element/config.php
   ```
4. Open `element/config.php` in a text editor and enter your local/production database details (host, username, password, and database name).
5. The actual `element/config.php` is protected by `.gitignore` and won't be pushed to public Git branches.

### 3. Run the Web App
*   **Local Server (Laragon / XAMPP):** Move the `E-Present` folder to your web root directory (`www/` or `htdocs/`) and navigate to `http://localhost/E-Present` in your web browser.
*   **Shared Hosting (InfinityFree / cPanel):** Upload the entire project directory (including the `vendor/` folder) to your host's web root (`public_html/` or `htdocs/`).

---

## 🔒 Security Recommendations for Git

1. **Database Secrets:** Never commit your production secrets or actual password database credentials. Use `element/config.example.php` as a guide. The `.gitignore` has been preset to protect the real configuration file.
2. **Default DB Accounts:** The SQL database dump (`db/e-present.sql`) has been sanitized of active credentials. The default admin accounts after database import are:
   *   **Username:** `admin` | **Password:** `admin123`
   *   **Username:** `user` | **Password:** `user123`
   *   *Make sure to change these credentials immediately after setting up the database.*

---

## 📝 Contributing
Contributions, feature requests, and issue reports are welcome. Feel free to open a new issue or submit a pull request!
