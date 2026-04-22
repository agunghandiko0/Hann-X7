const os = require('os');
const crypto = require('crypto');
const readline = require('readline');

const rl = readline.createInterface({ input: process.stdin, output: process.stdout });
const question = (text) => new Promise((resolve) => rl.question(text, resolve));
const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const getHWID = () => {
    const rawId = os.hostname() + os.type() + os.arch() + os.release();
    return crypto.createHash('md5').update(rawId).digest('hex').toUpperCase().substring(0, 12);
};

module.exports = {
    question,
    sleep,
    getHWID,
    HWID: getHWID()
};
