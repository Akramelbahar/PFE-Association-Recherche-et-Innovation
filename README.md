# Guide d'Installation du Projet

## Aperçu du Projet

Ce projet est une application web PHP simple avec connectivité à une base de données. Il fournit un framework léger pour créer des applications web avec intégration de base de données MySQL.

### Description Brève

Un framework d'application web PHP qui simplifie les interactions avec la base de données grâce à une approche orientée objet propre. Ce projet permet aux développeurs de construire rapidement des applications web avec support de base de données en utilisant une configuration simple.

## Configuration de la Base de Données

### Config.php

Le fichier `Config.php` contient tous les paramètres de configuration nécessaires pour l'application, y compris les paramètres de connexion à la base de données.

```php
<?php
/**
 * Configuration de l'Application
 * 
 * Ce fichier contient tous les paramètres de configuration pour l'application.
 */
class Config {
    // Configuration de la base de données
    const DB_HOST = 'localhost';
    const DB_NAME = 'mon_application';
    const DB_USER = 'root';
    const DB_PASS = '';
    
    // Paramètres de l'application
    const APP_NAME = 'Mon Application';
    const DEBUG_MODE = true;
    
    // D'autres options de configuration peuvent être ajoutées ici
}
```

### Db.php

Le fichier `Db.php` fournit un gestionnaire de connexion à la base de données qui gère toutes les interactions avec la base de données.

```php
<?php
/**
 * Gestionnaire de Connexion à la Base de Données
 * 
 * Cette classe gère toutes les interactions avec la base de données.
 */
class Db {
    private static $instance = null;
    private $connection;
    
    /**
     * Constructeur privé pour empêcher l'instanciation directe
     */
    private function __construct() {
        try {
            $this->connection = new PDO(
                'mysql:host=' . Config::DB_HOST . ';dbname=' . Config::DB_NAME,
                Config::DB_USER,
                Config::DB_PASS,
                [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
            );
        } catch (PDOException $e) {
            if (Config::DEBUG_MODE) {
                die("Erreur de Connexion à la Base de Données: " . $e->getMessage());
            } else {
                die("Une erreur de base de données s'est produite. Veuillez réessayer plus tard.");
            }
        }
    }

    /**
     * Obtenir l'instance de la base de données (modèle singleton)
     * 
     * @return Db
     */
    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * Obtenir la connexion à la base de données
     * 
     * @return PDO
     */
    public function getConnection() {
        return $this->connection;
    }

    /**
     * Exécuter une requête
     * 
     * @param string $sql Requête SQL
     * @param array $params Paramètres pour la requête préparée
     * @return PDOStatement
     */
    public function query($sql, $params = []) {
        $stmt = $this->connection->prepare($sql);
        $stmt->execute($params);
        return $stmt;
    }
}
```

## Comment Utiliser

1. Copiez les deux fichiers dans votre répertoire de projet
2. Modifiez `Config.php` avec vos identifiants de base de données
3. Incluez `Db.php` dans vos fichiers PHP pour utiliser les fonctionnalités de base de données


# Project Setup Guide

## Project Overview

This project is a simple PHP web application with database connectivity. It provides a lightweight framework for creating web applications with MySQL database integration.

### Brief Description

A PHP web application framework that simplifies database interactions through a clean, object-oriented approach. This project enables developers to quickly build web applications with database support using a configuration-based setup.

## Database Configuration

### Config.php

The `Config.php` file contains all necessary configuration settings for the application, including database connection parameters.

```php
<?php
/**
 * Application Configuration
 * 
 * This file contains all configuration settings for the application.
 */
class Config {
    // Database configuration
    const DB_HOST = 'localhost';
    const DB_NAME = 'my_application';
    const DB_USER = 'root';
    const DB_PASS = '';
    
    // Application settings
    const APP_NAME = 'My Application';
    const DEBUG_MODE = true;
    
    // Other configuration options can be added here
}
```

### Db.php

The `Db.php` file provides a database connection handler that manages all interactions with the database.

```php
<?php
/**
 * Database Connection Handler
 * 
 * This class handles all database interactions.
 */
class Db {
    private static $instance = null;
    private $connection;
    
    /**
     * Private constructor to prevent direct instantiation
     */
    private function __construct() {
        try {
            $this->connection = new PDO(
                'mysql:host=' . Config::DB_HOST . ';dbname=' . Config::DB_NAME,
                Config::DB_USER,
                Config::DB_PASS,
                [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
            );
        } catch (PDOException $e) {
            if (Config::DEBUG_MODE) {
                die("Database Connection Error: " . $e->getMessage());
            } else {
                die("A database error occurred. Please try again later.");
            }
        }
    }

    /**
     * Get database instance (singleton pattern)
     * 
     * @return Db
     */
    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * Get database connection
     * 
     * @return PDO
     */
    public function getConnection() {
        return $this->connection;
    }

    /**
     * Execute a query
     * 
     * @param string $sql SQL query
     * @param array $params Parameters for prepared statement
     * @return PDOStatement
     */
    public function query($sql, $params = []) {
        $stmt = $this->connection->prepare($sql);
        $stmt->execute($params);
        return $stmt;
    }
}
```

## How to Use

1. Copy both files to your project directory
2. Edit `Config.php` with your database credentials
3. Include `Db.php` in your PHP files to use database functionality
