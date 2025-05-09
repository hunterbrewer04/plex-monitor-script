# 🎥 Plex Monitor Script

Monitor active Plex streams in real-time from the command line with this simple, customizable script. 📺✅

---

## 🚀 Features

- ✅ Monitor active Plex streams in real-time
- 🛠️ Displays user and stream information
- 🔄 Customizable refresh interval
- 🔐 Secure token handling using `.env`

---

## 📦 Requirements

- Bash
- curl
- xmllint (`libxml2-utils`)

---

## 🛠️ Setup

1. Clone the repository:

   git clone git@github.com:hunterbrewer04/plex-monitor-script.git
   cd plex-monitor-script

2. Install dependencies:

   sudo apt update
   sudo apt install libxml2-utils curl

3. Create a `.env` file and add your Plex token and URL:

   echo "PLEX_TOKEN=your_plex_token_here" > .env
   echo "PLEX_URL=http://127.0.0.1:32400" >> .env

4. Make the script executable:

   chmod +x plex_monitor.sh

---

## ✅ Usage

Run the script:

   ./plex_monitor.sh

### Example Output (Active Streams):

   Checking Plex streams...
   Active Streams: 2

   Title: The Matrix
   User: john_doe

   Title: Breaking Bad - S02E01
   User: jane_smith

### Example Output (No Active Streams):

   No active streams currently.

---

## 📝 Configuration

- Token & URL: Modify the `.env` file to update the Plex token and URL.
- Refresh Interval: Adjust the refresh interval by modifying the `sleep` command in the script.
  

---

## 🛠️ Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Commit your changes: `git commit -m "Add new feature"`
4. Push to the branch: `git push origin feature/new-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.  
See the LICENSE file for full details.
