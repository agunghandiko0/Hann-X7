const moment = require('moment-timezone');
const chalk = require('chalk');
const { question } = require('./utils/helpers');

const generateLicense = async () => {
    console.clear();
    console.log(chalk.cyanBright("  █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗"));
    console.log(chalk.cyanBright(" ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║"));
    console.log(chalk.cyanBright(" ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║"));
    console.log(chalk.cyanBright(" ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║"));
    console.log(chalk.cyanBright(" ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║"));
    console.log(chalk.cyanBright(" ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝"));
    console.log(chalk.yellow("\n  [ PANEL ADMIN LISENSI HANN X7 ]\n"));

    const hwid = await question(chalk.white("  ➜ Masukkan HWID User yang sewa: "));
    if (!hwid) {
        console.log(chalk.red("  ✘ HWID tidak boleh kosong!"));
        process.exit();
    }

    console.log(chalk.cyan(`\n  ╭── [ PILIH DURASI LISENSI ]`));
    console.log(`  │ ${chalk.white("1.")} 3 Hari (Trial / Testing)`);
    console.log(`  │ ${chalk.white("2.")} 7 Hari (Mingguan)`);
    console.log(`  │ ${chalk.white("3.")} 14 Hari (Dua Minggu)`);
    console.log(`  │ ${chalk.white("4.")} 30 Hari (Bulanan)`);
    console.log(`  ╰────────────────────────────────`);

    const durasiOpt = await question(chalk.magentaBright("\n  ➜ Pilih Durasi (1-4): "));
    let days = 0;

    switch(durasiOpt) {
        case "1": days = 3; break;
        case "2": days = 7; break;
        case "3": days = 14; break;
        case "4": days = 30; break;
        default: 
            console.log(chalk.red("\n  ✘ Pilihan tidak valid! Sistem dihentikan."));
            process.exit();
    }

    const expiryDate = moment().tz("Asia/Jakarta").add(days, 'days').format('YYYY-MM-DD');
    const licenseString = `${hwid}|${expiryDate}|PREMIUM`;

    console.log(chalk.greenBright(`\n  ✓ LISENSI BERHASIL DIBUAT!`));
    console.log(chalk.cyan(`  ────────────────────────────────────────────`));
    console.log(`  ${chalk.yellow("String Lisensi :")} ${chalk.bgBlack.white(licenseString)}`);
    console.log(`  ${chalk.yellow("Tanggal Expire :")} ${chalk.white(expiryDate)}`);
    console.log(`  ${chalk.yellow("Durasi Aktif   :")} ${chalk.white(days + " Hari")}`);
    console.log(chalk.cyan(`  ────────────────────────────────────────────`));
    console.log(chalk.gray(`  Silakan copy String Lisensi di atas dan masukkan ke database/Pastebin Anda.`));

    process.exit();
};

generateLicense();
