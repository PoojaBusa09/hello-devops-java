# 🚀 Hello DevOps Java Project

This is a simple DevOps project demonstrating a Java application integrated with Docker and Jenkins CI/CD pipeline.

---

## 📌 Project Overview

This project contains:
- A basic Java program that prints "Hello DevOps 🚀"
- Dockerfile to containerize the Java application
- Jenkins pipeline for CI/CD automation

---

## 🛠️ Technologies Used

- Java
- Docker
- Jenkins
- Git & GitHub

---

## 📁 Project Structure
vmproject/
├── src/
│ └── App.java
├── Dockerfile
└── Jenkinsfile


---

## ▶️ How to Run (Without Jenkins)

### Step 1: Build Docker Image
```bash
docker build -t hello-devops-app .

docker run hello-devops-app

Output:
Hello DevOps 🚀

⚙️ Jenkins Pipeline

The Jenkins pipeline performs:

Code checkout from GitHub
Build Docker image
Run Docker container

🔗 GitHub Repository
https://github.com/PoojaBusa09/hello-devops-java

===================================================================================================
vm lo unna project local ki copy kavali ante command

in VM
scp pooja@10.154.40.170:/home/pooja/vmproject/project.zip .
NOTE : vm ip = 10.154.40.170

1. File ekkada undi check cheyali
ls

👉 project.zip kanipistundi

📂 2. Unzip cheyali
unzip project.zip
===========================================


Iam here
busapooja@LAPTOP-9FQD3FRN:~

1. Whole folder copy cheyali ante

Use -r (recursive) option:

scp -r pooja@10.154.40.170:/home/pooja/vmproject /home/busapooja/

👉 Idi:

VM → Local ki complete folder copy chesthundi


📂 2. Specific folder name change chesi copy cheyali ante
scp -r pooja@10.154.40.170:/home/pooja/vmproject ./myproject

3. Windows Downloads ki direct copy (best option 🔥)
vm lo unna project local ki copy kavali ante command
scp -r pooja@10.154.40.170:/home/pooja/vmproject /mnt/c/Users/Pooja/Downloads/

ippudu:

Windows → Downloads lo folder kanipistundi ✅

✅ 🏷️ 1. Job (Item) Name Suggestion

Mee project ki best names 👇

👉 ⭐ Recommended:

hello-devops-pipeline

👉 Alternatives:

java-devops-pipeline
docker-jenkins-java
hello-devops-ci-cd
✅ 🛠️ 2. New Item Create
Jenkins open chey (browser lo)
Click 👉 New Item

Name enter chey:

hello-devops-pipeline
Select 👉 Pipeline
Click 👉 OK
✅ ⚙️ 3. Pipeline Configuration

Scroll down → Pipeline section lo:

👉 Definition select chey:
Pipeline script from SCM
👉 SCM:
Git
👉 Repository URL:
https://github.com/PoojaBusa09/hello-devops-java.git
👉 Branch:
*/main
👉 Script Path:
Jenkinsfile

(⚠️ file name exact same undali GitHub lo)

✅ 💾 4. Save

👉 Click Save

✅ 🚀 5. Build Run

👉 Click Build Now

✅ 📊 6. Output Check
Click build number (e.g., #1)
Click Console Output

👉 Output lo kanipinchali:

Hello DevOps 🚀

