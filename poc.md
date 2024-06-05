# Frontend

| Author    | Created on   | Version      | Last updated by | Last edited on | GitHub ID                               |
|-----------|--------------|--------------:|:-----------------:|:----------------|-----------------------------------------|
| Nikhil    | 21-03-2024   | version 3    |    Nikhil       | 22-03-2024     | [iamnik28](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md) |

## :book: Description

The Frontend Web is a ReactJS-based application that serves as the main user interface for the OT-Microservices stack. It is designed to be highly versatile, supporting cross-platform functionality seamlessly. The only prerequisite for running this application is a JavaScript runtime environment.

## :books:Table of Contents

| No. |  Index                                                                                                                                                     |
|-----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1.  | [Key Features](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#key-1-key-features)                   |
| 2.  |  [Pre-Requisites](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#closed_book-2-pre-requisites)         |
| 3.  |  [Installation steps](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#blue_book-3-installation-steps) |
| 4.  | [Configuration](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#book-4-configuration)               |
| 5.  | [Start/Build Application](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#notebook-5-startbuild-application) |
| 6.  |  [Troubleshooting](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/edit/main/OT-Microservices/Frontend/POC/frontend_poc.md#question-6-troubleshooting)         |
| 7.  |  [Final Output](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#green_book-9-final-output)           |
| 8.  |  [Conclusion](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#bookmark_tabs-10-conclusion)           |
| 9.  | [Contact Information](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#phone-11-contact-information) |
| 10. |  [Reference Links](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/blob/main/OT-Microservices/Frontend/POC/frontend_poc.md#clipboard-12-reference-links)     |



## :key: 1) Key Features

| No. | Feature Description   | Description                                                                                                     |
|-----|-----------------------|-----------------------------------------------------------------------------------------------------------------|
| 1.  | ReactJS Framework     | Utilizes the powerful ReactJS framework to handle all frontend web page operations efficiently.                 |
| 2.  | Test Case Integration | Includes integrated test cases to verify the functionality of the application, ensuring robustness and reliability.|





## :closed_book: 2) Pre-Requisites
   
| No. | Software/Concept         |
|-----|--------------------------|
| 1.  | Node.js (V16)            | 
| 2.  | npm (Node Package Manager) |
| 3.  | React Default Port (3000) |

 
## :blue_book: 3) Installation steps

  - **Node Js**

        sudo apt update
    
**Updates the package index of the local APT package repository, ensuring that the latest versions of packages are available for installation.**
    
        curl -s https://deb.nodesource.com/setup_16.x | sudo bash
    
**This command adds the Node.js repository (NodeSource) to the system's package sources and configures it for Node.js version 16.x.**

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/4bf1616d-f896-4b55-b3f2-ae25c631ceae)


      sudo apt install nodejs -y
        
**Installs Node.js on the system. The '-y' flag automatically confirms any prompts during the installation process, allowing it to proceed without user intervention.**

        node -v
        
   **Checks the installed version of Node.js and prints it to the console.**

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/84d0861b-b748-4f3a-a27f-e0e66088bf57)


- **Install npm**

        sudo apt update
    
        sudo apt install npm -y
  
  **Installs npm (Node Package Manager) on the system. npm is used to manage packages and dependencies for Node.js projects. Similar to the previous command, '-y' flag automatically confirms prompts.**
    
  **Note** : If we install node js it will automatically install npm setup. No need to install again


## :book: 4) Configuration

  - Clone the repository

        git clone https://github.com/OT-MICROSERVICES/frontend.git

**This Clones the repository located at the specified URL in the local machine.**

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/74fd000d-c4b8-43d4-9a5f-10915f3f6779)

    
**Create folder in cloned repository with a name "public"**

        mkdir public

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/30a12f36-dd18-4a1d-bd24-97fbceff7fe2)

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/6442830b-e769-47d8-9ebb-418d74e88b49)

    
**Under the public folder create [index.html](https://github.com/react-cosmos/create-react-app-example/blob/master/public/index.html)**

        cd public

        touch index.html
    
**Add default content of index.html to it**

        vim index.html

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/7c2a7303-9d7e-4427-b459-2e2b73ee180b)


**Open TCP port 3000 in security group**

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/a4709996-92a0-473b-b6a1-b8a58e59b9d3)



## :notebook: 5) Start/Build Application

        npm install
        
**Installs project dependencies listed in the package.json file. It creates a 'node_modules' directory and downloads the required packages into it.**

![Screenshot from 2024-03-21 02-13-55](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/f8818f37-1f15-49da-9aea-48166259e045)



        npm start

**Executes the "start" script defined in the package.json file. This typically starts the development server or runs the application in a development environment.**


![Screenshot from 2024-03-21 02-45-20](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/4af8a8d9-1059-4110-b24d-9f2f772c5c64)


        npm run build


**Executes the "build" script defined in the package.json file. This script is often used to generate a production-ready build of the application by bundling and optimizing the source code.**


![Screenshot from 2024-03-21 02-44-58](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/17582a82-6d4e-4976-b46e-0ceccd5ae966)


## :question: 6) Troubleshooting


In the **src** directory, there are several files such as EmployeeList.js, ListSalary.js, AttendanceList.js, EmployeeForm.js, AttendanceForm.js, App.react.js, EmployeeData.js, HomePage.react.js, and SiteWrapper.react.js. Within these files, certain words are defined on lines 1 and 2 that are not being used, resulting in errors. 

For further details, please refer to the screenshots.

 - ### **Errors**

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/66d65582-4f97-402c-b85e-718a9fb81856)

![image](https://github.com/OT-MyGurukulam/Snaatak_p8_Documentation/assets/153828272/fabe0df6-8626-4262-a2bc-2bccb25f14e8)
