const express = require('express');

const app = express();
const port = 3001;

app.get('/world', (req, res) => {
    console.log('world called');
    res.send('World');
});

app.listen(port, () => {
    console.log(`world service listening at http://localhost:${port}`)
})
