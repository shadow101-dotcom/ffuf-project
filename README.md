 FFUF Recon Project

 Introduction

An ethical hacker cannot attack what they do not know.

This means that before attempting to exploit any system, the most critical phase is **Information Gathering (Reconnaissance)**. In this phase, the attacker aims to understand the target and uncover hidden attack surfaces.

One of the most important parts of reconnaissance is **Enumeration**, which involves actively discovering hidden assets such as:

- Subdomains  
- Hidden directories and files  
- Virtual hosts (VHOSTs)  
- Hidden parameters  

The goal is to expand the attack surface and identify potential entry points.

---

# Project Goal

This project demonstrates how to use **FFUF (Fuzz Faster U Fool)** to perform:

- Directory Fuzzing  
- VHOST Discovery  
- Parameter Fuzzing  

These techniques simulate real-world bug hunting methodologies used during the reconnaissance phase.

---

 1. Directory Fuzzing

*Related to:* Directory Enumeration  

 Concept

Web applications often contain hidden directories and files that are not visible to regular users. These paths may include sensitive areas such as admin panels, login pages, or internal dashboards.

FFUF works by sending multiple requests using a wordlist to guess these hidden paths. When a valid path is found, the server responds differently, indicating that the resource exists.

# Result

You may discover hidden paths such as:

- /admin  
- /login  
- /dashboard  

These locations can serve as critical entry points into the application.

---

# 2. VHOST Discovery

**Related to:** Subdomain / VHOST Enumeration  

 Concept

A single server can host multiple websites using virtual hosts. These hosts are not always publicly visible and may require specific hostnames to be accessed.

FFUF can fuzz the **Host header** to test different subdomain names. If the server responds positively to a specific name, it indicates the presence of a hidden virtual host.

# Result

You may discover hidden hosts such as:

- admin.example.com  
- dev.example.com  

These environments are often less secure and may contain vulnerabilities.

---

## 3. Parameter Fuzzing

**Related to:** Parameter Discovery  

### Concept

Web applications rely on parameters to handle user input. Some parameters may not be visible in the application but still exist on the server.

FFUF can test multiple parameter names to identify hidden ones. When a valid parameter is found, the server response may change, indicating its presence.

###  Result

You may discover parameters such as:

- id  
- user  
- admin  

These parameters can later be used to test for vulnerabilities like:
- SQL Injection  
- IDOR  




 How to Run

1. Before running the scripts, you need to give them execution permission using the `chmod +x` command.

2. After that, run each script separately depending on the type of fuzzing:

 Directory fuzzing script → for discovering hidden paths  
 VHOST script → for discovering virtual hosts  
 Parameter fuzzing script → for discovering hidden parameters  

3. Once the scripts finish, check the output files to view the results.



# Requirements

- FFUF installed  
- Wordlists (Dirb / SecLists)  



# Disclaimer

This project is for educational purposes only.  
Use only on authorized targets.
