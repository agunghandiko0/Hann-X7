const fs = require('fs');
const chalk = require('chalk');
const moment = require('moment-timezone');
const CONFIG = require('../config/settings');

const Log = {
    currentDate: () => moment().tz(CONFIG.TIMEZONE).format("YYYY-MM-DD HH:mm:ss"),
    save: (msg) => {
        const entry = `[${Log.currentDate()}] ${msg}\n`;
        fs.appendFileSync(CONFIG.LOG_FILE, entry);
    },
    info: (msg) => {
        console.log(`${chalk.gray(`[${moment().format("HH:mm:ss")}]`)} ${chalk.blueBright("ℹ")} ${msg}`);
        Log.save(`INFO: ${msg}`);
    },
    success: (msg) => {
        console.log(`${chalk.gray(`[${moment().format("HH:mm:ss")}]`)} ${chalk.greenBright("✓")} ${msg}`);
        Log.save(`SUCCESS: ${msg}`);
    },
    warn: (msg) => {
        console.log(`${chalk.gray(`[${moment().format("HH:mm:ss")}]`)} ${chalk.yellowBright("⚠")} ${msg}`);
        Log.save(`WARN: ${msg}`);
    },
    error: (msg) => {
        console.log(`${chalk.gray(`[${moment().format("HH:mm:ss")}]`)} ${chalk.redBright("✘")} ${msg}`);
        Log.save(`ERROR: ${msg}`);
    },
    ai: (from, msg) => {
        console.log(`${chalk.gray(`[${moment().format("HH:mm:ss")}]`)} ${chalk.magenta("🤖 AI")} ${chalk.dim("->")} ${chalk.yellow(from.split('@')[0])}`);
        Log.save(`AI_REPLY to ${from}: ${msg}`);
    }
};

module.exports = Log;
