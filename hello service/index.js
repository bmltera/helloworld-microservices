const express = require('express');

const app = express();
const port = 3000;

app.get('/hello', (req, res) => {
    console.log('hello called');
    res.send('Hello');
});

app.listen(port, () => {
    console.log(`hello service listening at http://localhost:${port}`)
})
