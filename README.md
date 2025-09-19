# 🥔 Potato Disease AI Classifier

A machine learning-powered web application that detects diseases in potato plants using image classification. The system can identify three conditions: **Early Blight**, **Late Blight**, and **Healthy** potatoes.

## 🚀 Features

- **Real-time Disease Detection**: Upload potato leaf images and get instant disease classification
- **High Accuracy**: CNN model trained on plant disease dataset
- **User-friendly Interface**: React-based web interface with drag-and-drop functionality
- **RESTful API**: FastAPI backend for easy integration
- **Confidence Scoring**: Get prediction confidence levels for each classification

## 🏗️ Project Structure

```
potato-disease/
├── api/                    # FastAPI backend
│   ├── main.py            # Main API application
│   └── requirements.txt   # Python dependencies
├── frontend/              # React frontend
│   ├── src/              # Source code
│   ├── public/           # Static assets
│   ├── package.json      # Node.js dependencies
│   └── build/            # Production build
├── models/               # Trained ML models
│   └── 1/
│       └── potatoes.h5   # TensorFlow model
├── training/             # Model training
│   ├── training.ipynb    # Jupyter notebook
│   └── PlantVillage/     # Training dataset
└── README.md
```

## 🔧 Technologies Used

### Backend
- **FastAPI** - Modern web framework for building APIs
- **TensorFlow** - Machine learning framework
- **PIL (Pillow)** - Image processing
- **NumPy** - Numerical computing
- **Uvicorn** - ASGI server

### Frontend
- **React** - Frontend framework
- **Material-UI** - React component library
- **Axios** - HTTP client
- **Material-UI Dropzone** - File upload component

### Machine Learning
- **TensorFlow/Keras** - Model training and inference
- **CNN Architecture** - Convolutional Neural Network
- **PlantVillage Dataset** - Training data

## � How It Works

The application consists of two main components:

### Backend API (FastAPI)
- Serves a trained TensorFlow model for disease classification
- Provides REST endpoints for image upload and prediction
- Handles image preprocessing and model inference
- Returns disease classification with confidence scores

### Frontend Interface (React)
- User-friendly web interface with drag-and-drop functionality
- Real-time image preview and results display
- Material-UI components for modern design
- Communicates with backend API for predictions

## 📡 API Endpoints

### Health Check
```
GET /ping
```
Returns: `"Hello"`

### Disease Prediction
```
POST /predict
```

**Request:**
- Method: POST
- Content-Type: multipart/form-data
- Body: Image file (JPG, PNG)

**Response:**
```json
{
  "class": "Early Blight",
  "confidence": 0.95
}
```

**Possible Classes:**
- `Early Blight`
- `Late Blight` 
- `Healthy`

## 🧠 Model Information

The machine learning model is a Convolutional Neural Network (CNN) trained on the PlantVillage dataset:

- **Input Size**: 256x256x3 (RGB images)
- **Architecture**: CNN with multiple convolutional and pooling layers
- **Training Dataset**: PlantVillage potato disease images
- **Classes**: 3 (Early Blight, Late Blight, Healthy)
- **Training Epochs**: 50
- **Batch Size**: 32

## 🎯 How to Use

1. **Upload an image** of a potato leaf using the drag-and-drop interface
2. **Wait for processing** - The system analyzes the image using the trained CNN model
3. **View results** - Get disease classification and confidence percentage
4. **Interpret results** - Understand whether the plant is healthy or affected by blight

## 🧪 Model Development

The machine learning model was developed using:

1. **Dataset Preparation** - PlantVillage dataset with potato disease images
2. **Model Architecture** - Convolutional Neural Network (CNN) design
3. **Training Process** - 50 epochs with data augmentation
4. **Model Validation** - Testing on separate validation dataset
5. **Model Export** - Saved as TensorFlow H5 format for deployment

The training process is documented in `training/training.ipynb` for reproducibility.

## 🎯 Project Impact

This application demonstrates practical application of machine learning in agriculture:

- **Early Disease Detection** - Helps farmers identify diseases before they spread
- **Accessibility** - Simple web interface requires no technical expertise
- **Cost-Effective** - Reduces need for expert consultations
- **Scalable Solution** - Can be extended to other crops and diseases

## 🙏 Acknowledgments

- [PlantVillage Dataset](https://www.kaggle.com/arjuntejaswi/plant-village) for providing the training data
- TensorFlow team for the machine learning framework
- Material-UI team for the React components
