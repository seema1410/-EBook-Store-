# 📚 E-Book Management System

A simple and effective E-Book Management System built using **Java**, **JSP**, **Servlets**, and **MySQL**. The system supports role-based access for users and admins, allowing users to upload, download, and manage e-books.

---

## 🛠️ Tech Stack

- **Backend:** Java, Servlet, JSP  
- **Frontend:** HTML, CSS, Bootstrap  
- **Database:** MySQL  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse or IntelliJ IDEA  

---

## ✨ Features

### 👤 User Features
- Register and login
- Browse e-books by category
- Download e-books
- Upload new e-books
- View uploaded books

### 🛡️ Admin Features
- Admin login
- Add/Edit/Delete books
- Manage categories (like Fiction, Education, Technology)
- View all user uploads
- Manage user accounts

---


---

## 🗄️ Database Design

### 📌 Database Name: `ebook_db`

### Table: `users`

| Field      | Type         | Description           |
|------------|--------------|-----------------------|
| id         | INT          | Primary key           |
| name       | VARCHAR(100) | User full name        |
| email      | VARCHAR(100) | User email (unique)   |
| password   | VARCHAR(100) | User password         |
| role       | VARCHAR(20)  | user / admin          |

### Table: `ebooks`

| Field       | Type         | Description           |
|-------------|--------------|-----------------------|
| id          | INT          | Primary key           |
| title       | VARCHAR(255) | Title of the book     |
| author      | VARCHAR(100) | Author of the book    |
| category    | VARCHAR(100) | Book category         |
| filename    | VARCHAR(255) | File stored name      |
| upload_date | DATE         | Date of upload        |
| uploaded_by | VARCHAR(100) | Email of uploader     |

---

## 🔧 How to Run the Project

### 🖥️ 1. Clone the Repository

```bash
git clone https://github.com/your-username/EBookManagement.git
```

### 2. Navigate to the project directory
```bash
cd EBook-Store
```
### 3. Open in your IDE (Eclipse or IntelliJ)

### 4. Ensure Java 17 and Maven are installed

### 5. Build the project
```bash
mvn clean install
```
### 6. Run the application
```bash
mvn spring-boot:run
```
### Step 5: Access the Application

Open your browser and go to:

 `http://localhost:8080`

 ---

 ## 🚀 Usage

1. **Register/Login:**
   - Open the application in your browser.
   - Navigate to the registration page (`/register.jsp`) to create a new account.
   - After registering, log in via the login page (`/login.jsp`).

2. **User Dashboard:**
   - After logging in, users can:
     - Browse available e-books by category.
     - Upload new e-books using the "Upload" option.
     - Download books in one click.

3. **Admin Dashboard:**
   - Log in as an admin using admin credentials.
   - Admin can:
     - Add new e-books.
     - Edit or delete existing books.
     - Manage book categories.
     - View all user uploads and activity.

4. **Logout:**
   - Use the logout button to end your session securely.
  
---

## 📞 Contact Information

For any questions or support related to the AI-based ResumeMate project, feel free to reach out:

- **Seema** (Developer)
- 📧 Email: seemadwivedi1119@gmail.com


