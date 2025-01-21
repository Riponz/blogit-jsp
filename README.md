# BlogIt

---

## Table of Contents
- [Introduction](#introduction)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)

---

## Introduction

BlogIt is a simple and intuitive blog website where users can create accounts, write and publish their own posts, and explore content shared by others. The platform is designed to foster creativity and engagement, allowing users to share their thoughts and ideas seamlessly. BlogIt aims to create a vibrant community of bloggers and readers.

---

## Technologies Used

- **Frontend and Backend:** JSP

---

## Installation

Provide step-by-step instructions on how to set up and run the project locally.

1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo.git
   ```

2. Navigate to the project directory:
  ```bash
  cd blogit
  ```

---

## Usage

### Setting Up Tomcat Server and Running a JSP Project

Follow these steps to set up Tomcat and run your JSP project:

### 1. Download and Install Apache Tomcat

- Go to the official [Apache Tomcat website](https://tomcat.apache.org/).
- Download the appropriate version of Tomcat for your operating system.
- Extract the downloaded archive to a directory of your choice.

### 2. Set Up Environment Variables

- **On Windows:**
    1. Open **System Properties** → **Advanced** → **Environment Variables**.
    2. Add a new system variable:
       - **Variable name:** `CATALINA_HOME`
       - **Variable value:** The directory where you extracted Tomcat (e.g., `C:\apache-tomcat-9.0.x`).

- **On macOS/Linux:**
    1. Open a terminal and edit the `.bash_profile` or `.bashrc` file.
    2. Add the following line:
       ```bash
       export CATALINA_HOME=/path/to/your/tomcat/directory
       ```
    3. Save the file and run:
       ```bash
       source ~/.bash_profile  # Or source ~/.bashrc
       ```

### 3. Start Tomcat Server

- **Windows:**
    - Navigate to the **bin** directory of the Tomcat installation (e.g., `C:\apache-tomcat-9.0.x\bin`).
    - Double-click on `startup.bat` to start the server.
  
- **macOS/Linux:**
    - Open a terminal and navigate to the **bin** directory of the Tomcat installation.
    - Run the following command to start the server:
      ```bash
      ./startup.sh
      ```

### 4. Deploy the JSP Project

- Place your JSP project files (including `.jsp` files, `WEB-INF`, and any required directories) inside the `webapps` folder of your Tomcat installation.
    - Example: `C:\apache-tomcat-9.0.x\webapps\YourJSPProject`
  
- Alternatively, you can deploy a `.war` file by placing it inside the `webapps` folder. Tomcat will automatically extract the `.war` file and deploy the project.

### 5. Access the JSP Project

- Open a web browser and go to:
    ```
    http://localhost:8080/YourJSPProject
    ```
- Replace `YourJSPProject` with the name of your project or `.war` file.

The JSP project should now be running on your Tomcat server.


