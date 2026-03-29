# TP 14 — Automatisation et Déploiement Spring Boot avec Bash

![Java](https://img.shields.io/badge/Java-21-orange?logo=java)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5-green?logo=springboot)
![Maven](https://img.shields.io/badge/Maven-Build-red?logo=apachemaven)
![Bash](https://img.shields.io/badge/Bash-Scripts-blue?logo=gnubash)
![H2](https://img.shields.io/badge/H2-Database-lightblue)

---

## Description

Ce projet démontre l'automatisation complète du cycle de vie d'une application **Spring Boot** à l'aide de scripts **Bash**. Il couvre la construction, l'exécution, l'arrêt, la supervision et le déploiement de l'application sans passer par un IDE.

---

## Objectifs

- Automatiser le build et le déploiement d'une application Spring Boot
- Gérer les processus Linux (PID, kill, nohup)
- Superviser l'application via les logs et l'Actuator
- Appliquer des concepts DevOps : livraison continue et déploiement reproductible

---

## Technologies utilisées

| Technologie | Version |
|---|---|
| Java | 21 |
| Spring Boot | 3.5.14 |
| Maven | 3.x |
| H2 Database | En mémoire |
| Spring Actuator | Inclus |
| Bash | Git Bash (Windows) |

---

## Structure du projet

```
ens-springbash/
├── src/
│   └── main/
│       ├── java/fst/elmouden/demo/
│       │   └── DemoApplication.java
│       └── resources/
│           └── application.properties
├── scripts/
│   ├── run.sh              
│   ├── stop.sh            
│   ├── logs.sh            
│   ├── deploy.sh          
│   ├── healthcheck.sh      
│   └── archive-logs.sh   
├── logs/
│   └── app.log
├── pom.xml
└── README.md
```

---

## Configuration

### `application.properties`

```properties
server.port=8086
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driver-class-name=org.h2.Driver
spring.jpa.hibernate.ddl-auto=create
spring.jpa.show-sql=true
management.endpoints.web.exposure.include=health,info
management.endpoint.health.show-details=always
```

---

## Scripts Bash

### `run.sh` — Démarrer l'application

Lance l'application Spring Boot en arrière-plan et enregistre les logs.

```bash
./scripts/run.sh
```

### `stop.sh` — Arrêter l'application

Trouve et arrête le processus Spring Boot en cours.

```bash
./scripts/stop.sh
```

### `logs.sh` — Superviser les logs

Affiche les 30 dernières lignes du fichier de logs.

```bash
./scripts/logs.sh
```

### `deploy.sh` — Build et déploiement

Compile le projet avec Maven et lance le JAR généré.

```bash
./scripts/deploy.sh
```

### `healthcheck.sh` — Vérifier la santé

Interroge l'endpoint Actuator pour vérifier l'état de l'application.

```bash
./scripts/healthcheck.sh
```

### `archive-logs.sh` — Archiver les logs

Crée une archive `.tar.gz` horodatée des logs.

```bash
./scripts/archive-logs.sh
```

---

## Installation et utilisation

### Prérequis

- Java JDK 21+
- Maven 3.x
- Git Bash (Windows) ou Terminal Linux/Mac

### Étapes

```bash
# 1. Cloner le projet
git clone https://github.com/votre-repo/ens-springbash.git
cd ens-springbash/demo

# 2. Rendre les scripts exécutables
chmod +x scripts/*.sh

# 3. Démarrer l'application
./scripts/run.sh

# 4. Vérifier les logs
./scripts/logs.sh

# 5. Vérifier la santé
./scripts/healthcheck.sh

# 6. Arrêter
./scripts/stop.sh
```

---

## Captures d'écran

### Démarrage — `run.sh`

<img width="509" height="175" alt="Screenshot 2026-03-29 034248" src="https://github.com/user-attachments/assets/462b04e8-e8e4-4bd1-a38a-232a61182205" />


### Logs — `logs.sh`

<img width="960" height="540" alt="Screenshot 2026-03-29 034820" src="https://github.com/user-attachments/assets/f893f078-729a-41b2-88b1-21b0efb8abb1" />


<img width="960" height="540" alt="Screenshot 2026-03-29 034834" src="https://github.com/user-attachments/assets/9c416e01-09fc-4058-9ba3-96981c43a408" />


### Healthcheck — `healthcheck.sh`

<img width="905" height="204" alt="Screenshot 2026-03-29 035049" src="https://github.com/user-attachments/assets/0afa16e7-28ff-43fc-a6b2-bda4a40f4f15" />

### Archivage des logs — `archive-logs.sh`

<img width="456" height="171" alt="Screenshot 2026-03-29 035121" src="https://github.com/user-attachments/assets/0b6369f5-e656-4bf1-a9c0-f9c9bd89d7a6" />


### Déploiement — `deploy.sh`

<img width="960" height="540" alt="Screenshot 2026-03-29 035215" src="https://github.com/user-attachments/assets/f578b099-ec02-48af-aff3-4201d2d9a397" />


<img width="960" height="540" alt="Screenshot 2026-03-29 035233" src="https://github.com/user-attachments/assets/a0ab4888-edf6-4e58-a034-7c4faf5b3417" />

# http://localhost:8086/

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7c8c9805-992c-4803-bfe1-de57bb245ea2" />



---

## Endpoints disponibles

| Endpoint | Description |
|---|---|
| `http://localhost:8086` | Application principale |
| `http://localhost:8086/actuator/health` | État de santé |
| `http://localhost:8086/actuator/info` | Informations |

---

## Auteur

**Mohamed EL MOUDEN**  
