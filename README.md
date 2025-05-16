# 🏟️ Turf Booking System

A web-based Java EE application that allows users to book turfs for sports activities like football, cricket, and tennis. Built using JSP, Servlets, and MySQL, it provides a user-friendly platform for managing bookings, users, feedback, and admin controls.

---

## 📌 Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Database Schema](#database-schema)
- [Installation & Setup](#installation--setup)
- [Usage](#usage)
- [Security Notes](#security-notes)
- [Contributing](#contributing)
- [License](#license)

---

## ✅ Features

- User registration and login with validations
- Browse available turf time slots
- Make new bookings and view history
- Submit feedback
- Admin dashboard to:
  - View all bookings
  - View registered users
  - Export feedback reports to Excel
- Responsive UI with Bootstrap styling

---

## 🛠️ Tech Stack

| Layer        | Technology                    |
|--------------|-------------------------------|
| Frontend     | HTML, CSS, JavaScript, JSP     |
| Backend      | Java EE (JSP + JDBC)           |
| Styling      | Bootstrap                      |
| Database     | MySQL                          |
| Server       | Apache Tomcat 10               |
| IDE          | Eclipse                        |

---

## 📁 Project Structure
```bash
bookingtrial/
├── src/main/webapp/
│ ├── index.jsp # Landing page
│ ├── userReg.jsp # Login & Signup page
│ ├── userhome.jsp # User dashboard
│ ├── adminhome.jsp # Admin dashboard
│ ├── newbook.jsp # Booking form
│ ├── bkhist.jsp # Booking history (user)
│ ├── chkbook.jsp # Booking records (admin)
│ ├── chkcust.jsp # View users (admin)
│ ├── chkfeed.jsp # Feedback report (admin)
│ ├── exlrep.jsp # Export feedback as Excel
│ └── ... # CSS, JS, images
└── .settings/ # Eclipse project settings
```

---

## 🗄️ Database Schema

Database: `tbs`

**Tables:**

- `usersall(username, usermail, usernum, password)`
- `bookings(dates, timest, timend, names)`
- `feed(questions, options)`

> Setup can be done manually via SQL or by importing the script (not included in this version).

---

## 🚀 Installation & Setup

### Prerequisites:

- Java JDK 14+
- Apache Tomcat 10
- MySQL Server
- Eclipse IDE with EE support

### Steps:

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/turf-booking-system.git
   ```
2. **Import the project into Eclipse**
- File → Import → Existing Projects into Workspace

3. Configure MySQL
- Create a database tbs
- Create required tables (usersall, bookings, feed)
- Set DB credentials in JSP files (e.g., user, password, localhost, port)

4. Deploy the project
- Add project to Tomcat server in Eclipse
- Run the server

5. Access the system
-Open your browser and navigate to:
  http://localhost:8080/bookingtrial/index.jsp

---
## Usage
- User: Sign up → Login → Book turf → View history → Submit feedback

- Admin: Login as 'Admin' → Access dashboard → View bookings/users/feedback

---

## Security Notes
- ⚠️ Passwords are stored in plain text — consider hashing before storing in production.

- ⚠️ SQL statements should be parameterized to prevent SQL Injection (some pages still use concatenated strings).

- ⚠️ Session validation should be improved for better access control.

---
## Contributing
Pull requests are welcome. For major changes, please open an issue first.

---
## License
This project is open-source and free to use under the MIT License.
