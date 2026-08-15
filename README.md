# CodeAlpha DevOps Internship - Task 4: Web Server using Docker

## 📌 Objective
Deploy and manage a web server inside a Docker container, understand container
lifecycle and commands, and explore container-based app deployment best practices.

## 🛠️ Tech Stack
- Docker
- Nginx (Alpine base image)
- HTML/CSS
- AWS EC2 (Ubuntu) as the host

## 📂 Project Structure
```
CodeAlpha_WebServerDocker/
├── Dockerfile
├── index.html
├── style.css
├── .dockerignore
├── README.md
└── screenshots/
```

## 🚀 How to Build and Run

1. Clone this repository:
   ```
   git clone https://github.com/<your-username>/CodeAlpha_WebServerDocker.git
   cd CodeAlpha_WebServerDocker
   ```

2. Build the Docker image:
   ```
   docker build -t mywebserver .
   ```

3. Run the container:
   ```
   docker run -d --name mywebserver -p 80:80 mywebserver
   ```

4. Open a browser and visit:
   ```
   http://<your-ec2-public-ip>
   ```

## 🔄 Container Lifecycle Commands Practiced

| Command | Purpose |
|---|---|
| `docker ps` | List running containers |
| `docker logs mywebserver` | View container logs |
| `docker stop mywebserver` | Stop the running container |
| `docker start mywebserver` | Start a stopped container |
| `docker restart mywebserver` | Restart the container |
| `docker exec -it mywebserver sh` | Open a shell inside the container |
| `docker rm mywebserver` | Remove the container (after stopping) |
| `docker rmi mywebserver` | Remove the image |

## 🐞 Troubleshooting Notes
- Verified container health using `docker ps` and `docker logs`.
- Simulated failure by stopping the container and confirming the site
  became unreachable, then restarted it to restore service.
- Ensured port 80 was open in the EC2 Security Group inbound rules.

## 📸 Screenshots
See the `screenshots/` folder for:
- `docker-ps.png` - container running
- `browser-view.png` - website loaded in browser
- `lifecycle-commands.png` - stop/start/restart in action

## 📚 What I Learned
- Docker containerization basics
- Building custom images with a Dockerfile
- Managing container lifecycle (start/stop/restart/remove)
- Deploying a containerized app on a cloud VM (AWS EC2)
- Basic troubleshooting of container issues

---
**Author:** [Your Name]
**Internship:** CodeAlpha DevOps Internship
