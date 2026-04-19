const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function getAgeMessage(age) {
    if (age < 30) {
        return "You are young!";
    } else if (age >= 30 && age < 67) {
        return "You are middle-aged.";
    } else if (age >= 67 && age <= 80) {
        return "You are aging and should travel the world!";
    } else {
        return "You should relax and enjoy your life!";
    }
}

function askQuestion(question) {
    return new Promise((resolve) => {
        rl.question(question, (answer) => {
            resolve(answer);
        });
    });
}

async function runCalculator() {
    const currentYear = new Date().getFullYear();

    console.log("\n========================================");
    console.log("   Welcome to the Age Calculator!");
    console.log("========================================\n");

    const name = await askQuestion("Please enter your name: ");
    const birthYear = parseInt(await askQuestion("Please enter your year of birth: "));

    const age = currentYear - birthYear;

    const message = getAgeMessage(age);

    console.log("\n----------------------------------------");
    console.log(`Hello, ${name}!`);
    console.log(`You are ${age} years old.`);
    console.log(message);
    console.log("----------------------------------------\n");

    const runAgain = await askQuestion("Would you like to run the program again? (yes/no): ");

    if (runAgain.toLowerCase() === "yes" || runAgain.toLowerCase() === "y") {
        await runCalculator();
    } else {
        console.log("\nThank you for using the Age Calculator. Goodbye!");
        rl.close();
    }
}

runCalculator();
