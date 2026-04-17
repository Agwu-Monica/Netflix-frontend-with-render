# 🎬 Monica's Netflix Full-Stack Deployment (DevOps Case Study)

A cloud-native, decoupled movie gallery demonstrating modern CI/CD practices and Full-Stack integration.

## 🔗 Project Links
* **Live Frontend UI:** https://monica-netflix-frontend.onrender.com 

* **Live API Endpoint:** https://monica-netflix.onrender.com/movies   

* **Frontend Repository:** https://github.com/Agwu-Monica/netflix-frontend 

* **Backend Repository:** https://github.com/Agwu-Monica/netflix-backend 


<img width="1305" height="604" alt="docker 42" src="https://github.com/user-attachments/assets/f6551ca7-e882-45de-a8e1-b5843a393af8" />






---

## 🏗️ DevOps & Cloud Architecture
* **Infrastructure as a Service (IaaS):** Managed via **Render**.
* **Database:** **MongoDB Atlas** (Global Cluster).
* **Decoupled Architecture:** Separated Frontend (Static Hosting) and Backend (Web Service) to allow independent scaling and improved fault tolerance.
* **Networking:** Implemented **CORS** (Cross-Origin Resource Sharing) for secure service-to-service communication.
* **CI/CD:** Automated deployment pipeline triggered by GitHub pushes, ensuring continuous delivery.

## 🛠️ Technology Stack
- **Backend:** Java 17, Spring Boot, Maven
- **Frontend:** JavaScript (Async/Fetch API), HTML5, CSS3
- **DevOps Tools:** Docker, Git, Render, MongoDB Atlas

## 🚧 Key Technical Challenges & Resolutions

### 1. The "Port Scan Timeout" (Cloud Infrastructure)
**Challenge:** Initial deployment failed on Render due to port binding errors within the containerized environment.
**Resolution:** Optimized the `Dockerfile` and `application.properties` to ensure the service correctly listens on port `8080`, aligning with Render's dynamic port allocation.

### 2. CORS & Security Gatekeeping
**Challenge:** The frontend was blocked from fetching data due to browser Same-Origin Policy (SOP) restrictions.
**Resolution:** Implemented a custom `SecurityFilterChain` and added `@CrossOrigin` annotations in the Spring Boot controller to explicitly authorize the frontend origin.

### 3. Data Persistence Migration
**Challenge:** Transitioning from local Dockerized MongoDB to a distributed cloud database (MongoDB Atlas).
**Resolution:** Reconfigured cloud connection strings and managed network security (IP whitelisting) to ensure seamless data persistence and high availability.

---

## 👨‍💻 Author
**Monica**

*Cloud Engineering & DevOps

https://www.linkedin.com/in/agwumonica/
