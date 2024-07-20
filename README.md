# FakeAPI Robot Framework Automation Project

This project implements test suites to validate the FakeAPI services. The objective was to develop automated test cases using the Robot Framework and organize them into a production-ready architecture.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [References](#references)

## Requirements
To execute the automation, you’ll need a Python environment. In this environment, you can install the necessary libraries and run the robot code.    
It’s recommended to use at least Python version 3.11, as that was the version used to develop the tests.

## Installation

1. **Set Up a Virtual Environment**
   
   After installing the appropriate Python version, create a virtual environment for this project. This allows you to use the required libraries without affecting your local Python environment.

2. **Install Virtual Environment Tool**
   
   You can use any virtual environment tool. If you don't have a preference, it's recommended to use `virtualenv`. Install it with the following command:
   ```bash
   pip install virtualenv
   ```

3. **Create the Virtual Environment**
   
   Create your virtual environment by executing:
   ```bash
   virtualenv venv
   ```

4. **Activate the Virtual Environment**
   
   Activate the environment by running:
   ```bash
   ./venv/Scripts/activate
   ```

5. **Install Project Dependencies**
   
   With the virtual environment activated, install the project dependencies:
   ```bash
   pip install -r requirements.txt
   ```

Your environment is now set up and ready to execute the project.

## Usage

Once your Python environment is properly set up, you can run all the tests with the following command:

```bash
robot -d logs tests/
```

After execution, you can access the logs in the `logs/` directory.

> 💡 Remember to execute this command from the project's root folder!

## References
This project was developed to validate the FakeAPI services. You can find the Swagger for the services on this [link](#https://fakerestapi.azurewebsites.net/index.html)

Also, to implement the test cases, the following libraries were used:  
1. [Requests Library](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html#library-documentation-top)
2. [JSON Library](https://robotframework-thailand.github.io/robotframework-jsonlibrary/)


### Author
Luca Meireles Rocha de Oliveira
