
const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const cors = require('cors');
const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

// Initialize SQLite DB
const db = new sqlite3.Database('./database_storage/database.db', (err) => {
  if (err) return console.error(err.message);
  db.run("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, place TEXT, phone TEXT)");
});

app.get('/api/users', (req, res) => {
  db.all("SELECT * FROM users", [], (err, rows) => {
    if (err) return res.status(400).json({ error: err.message });
    res.json({ data: rows });
  });
});

app.post('/api/users', (req, res) => {
  const { name, place, phone } = req.body;
  db.run("INSERT INTO users (name, place, phone) VALUES (?, ?, ?)", [name, place, phone], function(err) {
    if (err) return res.status(400).json({ error: err.message });
    res.json({ id: this.lastID });
  });
});

app.delete('/api/users/:id', (req, res) => {
  db.run("DELETE FROM users WHERE id = ?", [req.params.id], function(err) {
    if (err) return res.status(400).json({ error: err.message });
    res.json({ deletedID: req.params.id });
  });
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
