<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    
<div class="sidebar">
    <div class="sidebar-header">
        <h2>FarmTech</h2>
        
    </div>
    <ul class="sidebar-menu">
        <li>
            <a href="admindashboard">
                <i class="fas fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li>
            <a href="viewallusers">
                <i class="fas fa-users"></i>
                <span>Users</span>
            </a>
        </li>
        <li>
            <a href="viewallfarmers">
                <i class="fas fa-tractor"></i>
                <span>Farmers</span>
            </a>
        </li>
        
        <li>
            <a href="viewallexperts">
                <i class="fas fa-users"></i>
                <span>Expert</span>
            </a>
        </li>
        <li>
            <a href="content.jsp">
                <i class="fas fa-book"></i>
                <span>Content</span>
            </a>
        </li>
        <li>
            <a href="discussions.jsp">
                <i class="fas fa-comments"></i>
                <span>Discussions</span>
            </a>
        </li>
        <li>
            <a href="analytics.jsp">
                <i class="fas fa-chart-bar"></i>
                <span>Analytics</span>
            </a>
        </li>
        <li>
            <a href="settings.jsp">
                <i class="fas fa-cog"></i>
                <span>Settings</span>
            </a>
        </li>
         <li>
            <a href="adminlogout">
                <i class="fas fa-out"></i>
                <span>Logout</span>
            </a>
        </li>
    </ul>
</div>

<style>
    :root {
        --sidebar-color: #2c3e50;
        --primary-color: #2ecc71;
        --hover-transition: all 0.3s ease;
    }

    .sidebar {
        width: 280px;
        background: var(--sidebar-color);
        color: white;
        padding: 2rem 1.5rem;
        transition: var(--hover-transition);
        min-height: 100vh;
        position: fixed;
        left: 0;
        top: 0;
        z-index: 1000;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    }

    .sidebar-header {
        padding: 1rem 0;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        margin-bottom: 2rem;
    }

    .sidebar-header h2 {
        font-size: 1.8rem;
        color: var(--primary-color);
        text-transform: uppercase;
        letter-spacing: 1px;
        margin: 0;
    }

    .sidebar-menu {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .sidebar-menu li {
        margin-bottom: 0.8rem;
    }

    .sidebar-menu li a {
        display: flex;
        align-items: center;
        padding: 1rem 1.2rem;
        border-radius: 8px;
        color: white;
        text-decoration: none;
        transition: var(--hover-transition);
    }

    .sidebar-menu li a:hover {
        background: rgba(46, 204, 113, 0.2);
        transform: translateX(5px);
    }

    .sidebar-menu li.active a {
        background: var(--primary-color);
    }

    .sidebar-menu li i {
        margin-right: 1rem;
        font-size: 1.2rem;
        width: 20px;
        text-align: center;
    }

    @media (max-width: 1024px) {
        .sidebar {
            width: 80px;
            padding: 1rem 0.5rem;
        }

        .sidebar-header h2,
        .sidebar-menu span {
            display: none;
        }

        .sidebar-menu li a {
            padding: 1rem;
            justify-content: center;
        }

        .sidebar-menu li i {
            margin: 0;
            font-size: 1.5rem;
        }

        .sidebar-menu li a:hover {
            transform: translateX(0);
            background: var(--primary-color);
        }
    }
</style>