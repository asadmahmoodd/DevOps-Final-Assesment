# DevOps Intern Final Assessment

**Name:** Asad Mahmood
**Date:** August 8, 2026

**Project Description:** 
This repository contains a complete, documented DevOps workflow built using open-source tools. It demonstrates a realistic DevOps pipeline that includes Linux scripting, containerization, automated CI/CD workflows, job orchestration, and logging/monitoring.

![CI Pipeline](https://github.com/asadmahmoodd/DevOps-Final-Assesment/actions/workflows/ci.yml/badge.svg)

---

## Project Steps & Run Instructions

### 1. Git & GitHub Setup
The repository is initialized with this `README.md` and a sample Python script (`hello.py`) that prints a greeting.
* **To run:** `python hello.py`
* **Output:** `Hello, DevOps!`

### 2. Linux & Scripting Basics
A shell script (`sysinfo.sh`) is located in the `scripts/` directory. It retrieves and prints the current user, current date, and system disk usage.
* **To run:** 
  ```bash
  chmod +x scripts/sysinfo.sh
  ./scripts/sysinfo.sh
  ```

### 3. Docker Basics
The application is containerized using Docker. The `Dockerfile` packages the `hello.py` script into a lightweight Python 3.9 image and executes it upon startup.
* **To build the image:** 
  ```bash
  docker build -t hello-devops .
  ```
* **To run the container:** 
  ```bash
  docker run hello-devops
  ```

### 4. CI/CD with GitHub Actions
A GitHub Actions workflow is configured in `.github/workflows/ci.yml`. It automatically checks out the repository, sets up Python, and runs the `hello.py` script on every push to the repository. The status badge for this pipeline is displayed at the top of this document.

### 5. Job Deployment with Nomad
A Nomad job file (`hello.nomad`) is provided in the `nomad/` directory to orchestrate the deployment of the Docker container. It is configured as a `service` job with minimal CPU and memory resources allocated.
* **To run the deployment:** 
  ```bash
  nomad job run nomad/hello.nomad
  ```

### 6. Monitoring with Grafana Loki
Log forwarding is configured to capture the container's output using Grafana Loki. 
* Detailed setup instructions, the command used to start Loki, and the command used to view logs are documented in `monitoring/loki_setup.txt`.