const express = require('express');
const _ = require('lodash');
const app = express();

app.get('/', (req, res) => res.json(_.pick({ status: 'ok', lab: 7 }, ['status', 'lab'])));
app.listen(3000, () => console.log('Server on :3000'));