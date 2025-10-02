# 🥔 Potato Disease Detection System

A machine learning project that detects diseases in potato plants using image classification. Built with TensorFlow, FastAPI, and React.

## 📊 [View Documentation Website](https://xiuxiu06.github.io/potato-disease-app/) | � [Watch Demo Video](https://xiuxiu06.github.io/potato-disease-app/demo.html)

Complete project documentation built with Quarto, including live demonstration video showing the application in action.

## 🚀 Project Overview

This project demonstrates end-to-end machine learning development:

- **CNN Model**: TensorFlow/Keras model trained on PlantVillage dataset
- **Backend API**: FastAPI server for model predictions  
- **Frontend**: React app with image upload interface
- **Documentation**: Professional docs with Quarto

## 🏗️ Project Structure

```
potato-disease/
├── api/                    # FastAPI backend
│   ├── main.py            # Main API application
│   └── requirements.txt   # Python dependencies
├── frontend/              # React frontend
│   ├── src/              # Source code
│   └── package.json      # Node.js dependencies
├── models/               # Trained ML model
│   └── 1/potatoes.h5     # TensorFlow model
├── training/             # Model training
│   └── training.ipynb    # Jupyter notebook
├── docs/                 # Quarto documentation
│   ├── index.qmd         # Project overview
│   ├── training.qmd      # Training analysis
│   └── api-docs.qmd      # API documentation
└── README.md
```

## 🔧 Technologies

- **Machine Learning**: TensorFlow, Keras, CNN
- **Backend**: FastAPI, Python, Uvicorn
- **Frontend**: React, Material-UI, JavaScript
- **Documentation**: Quarto, Markdown
- **Data**: PlantVillage Dataset

## 🌐 Disease Classes

- **Early Blight**: Early stage fungal infection
- **Late Blight**: Advanced fungal infection  
- **Healthy**: No disease detected

## 📋 API Endpoints

### Health Check
```bash
GET /ping
```

### Predict Disease
```bash
POST /predict
Content-Type: multipart/form-data
Body: image file
```

**Response:**
```json
{
  "class": "Early Blight",
  "confidence": 0.95
}
```

## 🎯 Skills Demonstrated

- **Machine Learning**: CNN training, image classification
- **Backend Development**: REST API design with FastAPI
- **Frontend Development**: React components and UI
- **Documentation**: Technical writing with Quarto
- **Full-stack Integration**: Connecting ML models to web apps

## 📖 Documentation

The complete project documentation and demonstration:

- **[🎬 Demo Video](https://xiuxiu06.github.io/potato-disease-app/demo.html)** - Watch the application in action
- **[📖 Project Overview](https://xiuxiu06.github.io/potato-disease-app/)** - Main project description
- **[🧠 Model Training](https://xiuxiu06.github.io/potato-disease-app/training.html)** - Training code and process
- **[🔌 API Documentation](https://xiuxiu06.github.io/potato-disease-app/api-docs.html)** - Backend API details
- **[📊 Methodology](https://xiuxiu06.github.io/potato-disease-app/methodology.html)** - Project approach

## 🏃‍♂️ Quick Start

### Backend
```bash
cd api
pip install -r requirements.txt
python -m uvicorn main:app --reload
```

### Frontend  
```bash
cd frontend
npm install
npm start
```

### Documentation
```bash
quarto preview
```

## 🎓 Learning Project

This is a learning project that demonstrates practical machine learning application development. It showcases the complete workflow from model training to deployment and documentation.

---

**Built by Tam Le** | [Documentation](https://xiuxiu06.github.io/potato-disease-app/)
