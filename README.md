# Gym Management System

## Overview
The Gym Management System is a **full-stack application** designed to provide a seamless experience for gym members and administrators. The system consists of:
- **A mobile app for iOS** that allows gym members to access their gym-related information and upload images.
- **An admin website** for registering and managing members.
- **A custom backend** developed using **Spring Boot** to handle the data flow and provide APIs for the mobile app and the website.

> **Note:** The project is currently under development.

## Features

### Frontend (iOS)
The iOS mobile app provides the following features to gym members:

#### **Dashboard**
- View the **current number of people** present at the gym.
- Access **membership status**, including the membership type, due amount, and payment date.
- View the **gym's opening and closing time**.

#### **Diet & Workouts**
- Get personalized **diet and workout plans** based on the membership type.
- Ability to **upload pictures** of progress or achievements, similar to Instagram.

#### **Profile**
- A member's profile that shows personal details.
- Option to **upload and update the member’s profile picture**.

#### **Miscellaneous**
- **Push notifications** for updates and announcements related to the gym, such as schedule changes, events, etc.

### Admin Website
The master website is designed to allow gym administrators to manage members:

- **Create, delete, and update members** in the system.
- **Add or remove members** from the gym app dashboard.
- Manage gym operations such as adding new members, updating details, and viewing member activity.

### Backend (Spring Boot)
The backend provides the necessary API and data management:

- **Custom API**: Developed with **Spring Boot** to handle all requests from the iOS app and the master website.
- **Database**: Stores member information, membership details, gym activities, and pictures.
- **User Authentication & Authorization**: For secure login and management of gym members.


