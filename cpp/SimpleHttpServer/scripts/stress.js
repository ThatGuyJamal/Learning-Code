import fetch from 'node-fetch';
import fs from "node:fs"

const apiUrl = 'http://localhost:8080'; // Replace with your C++ API URL
const logFilePath = 'stress_results.log';

const runCount = 6000;
const runInterval = 100;
const writeToFile = true;
let success = 0;
let fail = 0;

function stress() {
    let i = 0;

    function hit() {
        if (i < runCount) {
            makeRequest(i + 1);
            i++;
        } else {
            clearInterval(interval);
            console.log(`Stress test completed. Success: ${success}, Fail: ${fail}`);
        }
    }

    const interval = setInterval(hit, runInterval);
}

async function makeRequest(iteration) {
    const startTime = new Date().getTime();
    try {
        const response = await fetch(apiUrl);
        const data = await response.text();
        const endTime = new Date().getTime();
        const responseTime = endTime - startTime;
        const logData = `Iteration ${iteration}: Response received in ${responseTime} ms:\n${data}\n\n`;

        // Log the results to the console
        console.log(`Iteration ${iteration}: Response received in ${responseTime} ms`);
        console.log(data);

        // Log the results to a file
        if (writeToFile) {
            fs.appendFileSync(logFilePath, logData, 'utf-8');
        }
        success++;
    } catch (error) {
        console.error(`Iteration ${iteration}: Error fetching API:`, error);
        fail++;
    }
}

stress();
