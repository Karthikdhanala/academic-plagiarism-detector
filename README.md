# 🎓 AcademiCheck v2 — Intelligent Plagiarism Detector
### React + FastAPI | Academic University Style

---

## 📦 Project Structure

```
plagiarism_v2/
├── backend/
│   ├── data/
│   │   └── generate_dataset.py   ← dataset generator
│   ├── models/                   ← trained model saved here
│   ├── src/
│   │   ├── __init__.py
│   │   ├── preprocessing.py
│   │   ├── embedding.py
│   │   ├── similarity.py
│   │   └── predictor.py
│   ├── main.py                   ← FastAPI app
│   ├── train.py                  ← model training script
│   └── requirements.txt
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Layout.jsx
│   │   │   ├── ResultCard.jsx
│   │   │   ├── CompareView.jsx
│   │   │   └── ExplainPanel.jsx
│   │   ├── pages/
│   │   │   ├── Analyse.jsx       ← main page
│   │   │   ├── History.jsx
│   │   │   └── About.jsx
│   │   ├── utils/api.js
│   │   ├── App.jsx
│   │   ├── main.jsx
│   │   └── index.css
│   ├── package.json
│   ├── vite.config.js
│   └── index.html
├── setup.bat                     ← run once to install everything
└── start.bat                     ← run every time to launch the app
```

---

## 🚀 Setup (Run Once)

### Prerequisites
- Python 3.9–3.12
- Node.js 18+ (download from https://nodejs.org)

### Step 1 — Run setup script
```cmd
setup.bat
```
This will:
1. Create Python virtual environment
2. Install all backend dependencies
3. Download NLTK + spaCy models
4. Generate dataset and train model
5. Install frontend Node packages

---

## ▶️ Running the App (Every Time)

```cmd
start.bat
```

This opens two terminal windows:
- **Backend** at `http://localhost:8000`
- **Frontend** at `http://localhost:3000`

Your browser opens automatically!

---

## 🌟 Features

| Feature | Description |
|---------|-------------|
| 📝 Text Input | Paste text directly or upload .txt / .pdf |
| 🔍 Analysis | TF-IDF + Sentence-BERT semantic similarity |
| 🔴 Verdict | Plagiarized / Not Plagiarized + probability % |
| 📊 Compare View | Side-by-side with word-level highlighting |
| 🧠 Explain | SHAP + LIME charts with plain English summary |
| 📋 History | All past checks with delete option |
| 📖 About | Full pipeline and tech stack explanation |

---

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/health` | Health check |
| POST | `/api/analyse` | Analyse two texts |
| POST | `/api/upload` | Upload .txt or .pdf |
| GET | `/api/history` | Get check history |
| DELETE | `/api/history/{id}` | Delete history entry |

API docs (Swagger UI): `http://localhost:8000/docs`
  


  