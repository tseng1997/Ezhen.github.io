const apiKey = "TNEHcPl3isEKIjUgaDroteNGeUbPbJIx";


function fetchForexRates() {
    fetch(`https://api.apilayer.com/fixer/latest`, {
        method: "GET",
        headers: {
            "apikey": apiKey
        }
    })
        .then(response => response.json())
        .then(data => {
            const forexData = {};
            for (const currency in data.rates) {
                forexData[currency] = data.rates[currency] + 10.0002;
            }

            displayForexTable(data.rates, forexData);
        })
        .catch(error => console.error(error));
}

function getLastDigit(number) {
    const numberString = number.toString();
    const lastDigit = numberString.charAt(numberString.length - 1);
    return parseInt(lastDigit, 10);
}

function isLastDigitEven(number) {
    const lastDigit = getLastDigit(number);
    return lastDigit % 2 === 0;
}

function displayForexTable(originalRates, modifiedRates) {
    const table = document.getElementById("forex-table");

    // Create table header
    const headerRow = document.createElement("tr");
    const headerCurrencyCell = document.createElement("th");
    headerCurrencyCell.textContent = "Currency";
    const headerOriginalRateCell = document.createElement("th");
    headerOriginalRateCell.textContent = "Original Rate";
    const headerModifiedRateCell = document.createElement("th");
    headerModifiedRateCell.textContent = "Modified Rate";

    headerRow.appendChild(headerCurrencyCell);
    headerRow.appendChild(headerOriginalRateCell);
    headerRow.appendChild(headerModifiedRateCell);
    table.appendChild(headerRow);

    // Populate the table with data
    for (const currency in originalRates) {
        const row = document.createElement("tr");
        const currencyCell = document.createElement("td");
        currencyCell.textContent = currency;
        const originalRateCell = document.createElement("td");
        originalRateCell.textContent = originalRates[currency];
        const modifiedRateCell = document.createElement("td");
        modifiedRateCell.textContent = modifiedRates[currency];

        // Check if the last digit is even and add the CSS class
        if (isLastDigitEven(originalRates[currency])) {
            originalRateCell.classList.add("even");
        }
        if (isLastDigitEven(modifiedRates[currency])) {
            modifiedRateCell.classList.add("even");
        }


        row.appendChild(currencyCell);
        row.appendChild(originalRateCell);
        row.appendChild(modifiedRateCell);
        table.appendChild(row);
    }
}

fetchForexRates();
