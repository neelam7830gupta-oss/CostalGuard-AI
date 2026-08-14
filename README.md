# CoastalGuard AI

**AI-Driven Cyclone & Coastal Disaster Early Warning System for Gujarat's Coastal Regions**

> ⚠️ This is a decision-support platform. Always verify information with official IMD / NDRF / SDMA advisories.

---

## 🚀 Quick Start

### 1. Install dependencies
```bash
cd coastalguard-ai
npm install
```

### 2. Configure environment
Copy `.env.example` to `.env` and set your API key:
```bash
copy .env.example .env
```
Edit `.env`:
```
GROQ_API_KEY=your_groq_api_key_here
PORT=3000
AI_PROVIDER=groq
DEMO_MODE=false
```

### 3. Start the server
```bash
npm start
```

### 4. Open in browser
```
http://localhost:3000
```

---

## 🎭 Demo Mode

To run with simulated data (no real API required except Groq):
```
DEMO_MODE=true
```
Or toggle in the sidebar UI.

---

## 🏗️ Architecture

```
coastalguard-ai/
├── server/
│   ├── index.js              # Express server
│   ├── ai/
│   │   ├── aiProvider.js     # Groq / IBM Granite abstraction
│   │   ├── orchestrator.js   # Master AI orchestrator
│   │   └── agents/
│   │       ├── cycloneAgent.js
│   │       ├── fishermanAgent.js
│   │       ├── evacuationAgent.js
│   │       ├── reliefAgent.js
│   │       └── damageAgent.js
│   └── data/
│       └── demoData.js       # Simulated Gujarat cyclone data
└── public/
    ├── index.html            # Main UI
    ├── style.css             # Styles (dark/light theme)
    └── app.js                # Frontend application
```

---

## 🤖 Five AI Agents

| Agent | Emoji | Purpose |
|-------|-------|---------|
| Cyclone Track & Intensity | 🌀 | Track cyclone position, movement, intensity, landfall prediction |
| Fishermen Safety Alert | 🎣 | Marine safety alerts, sea conditions, harbor guidance |
| Evacuation Route Planning | 🛣️ | Safe evacuation routes, shelter locations, hazard avoidance |
| Relief Resource Coordination | 📦 | Resource tracking, shortage identification, allocation planning |
| Post-Disaster Damage Assessment | 🛰️ | Damage analysis from images, reports, field data |

---

## 🔧 Configuration

### Switch AI Provider
```
AI_PROVIDER=groq      # Use Groq API (default)
AI_PROVIDER=granite   # Use IBM Granite
```

### Groq Models
```
GROQ_MODEL=mixtral-8x7b-32768   # Default — fast, high quality
GROQ_MODEL=llama3-8b-8192       # Faster, lighter
GROQ_MODEL=llama3-70b-8192      # Highest quality
```

---

## 🔒 Security

- API keys stored in server-side `.env` only
- Never exposed to frontend JavaScript
- Input validation via `express-validator`
- Rate limiting via `express-rate-limit`
- HTTP security headers via `helmet`
- Conversation stored in-memory with size limit

---

## 🌊 Gujarat Coastal Coverage

Districts covered:
- **Critical Zone**: Porbandar, Dwarka, Jamnagar
- **High Risk**: Gir Somnath, Amreli, Kutch
- **Medium Risk**: Rajkot, Morbi
- **Low Risk**: Surat, Bharuch, Valsad

---

## 📡 Emergency Contacts (Real)

- **NDRF Helpline**: 011-24363260
- **Gujarat SDMA**: 1070
- **Indian Coast Guard**: 1554
- **IMD Gujarat**: mausam.imd.gov.in
- **MRCC Mumbai**: +91-22-22150512

---

## ⚠️ Disclaimer

CoastalGuard AI is a **decision-support tool only**. It does not replace:
- Official IMD cyclone warnings
- NDRF / SDRF emergency orders
- District Collector evacuation orders
- Gujarat SDMA advisories

All AI predictions are estimates based on available data and must be verified with official authorities before any emergency action.
