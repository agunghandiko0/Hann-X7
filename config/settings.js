require('dotenv').config();

module.exports = {
    APP_NAME: "HANN X7",
    VERSION: "6.0.0-PREMIUM",
    OWNER_TG: "@agunghandiko (telegram)",
    PASTEBIN_URL: "https://pastebin.com/raw/Qbv9n3FX",
    AI_KEY: process.env.AI_KEY || "",
    AI_MODEL: "google/gemini-2.0-flash-001",
    TIMEZONE: "Asia/Jakarta",
    LOG_FILE: "./activity.log",
    TARGET_GROUP: "",
    SLEEP_START: null,
    SLEEP_END: null
};
