💱 Live CC App by Manasi

A simple and user-friendly Live Currency Converter web application built using Python, Bottle, HTML, and CSS. The application fetches live exchange rates from the ExchangeRate API and converts an amount from one currency to another in real time.

🚀 Features

- 💰 Convert currencies using live exchange rates
- 🌍 Supports multiple currencies:
  - INR – Indian Rupee
  - USD – US Dollar
  - EUR – Euro
  - GBP – Pound
  - AED – Dirham
  - AUD – Australian Dollar
  - CAD – Canadian Dollar
  - JPY – Japanese Yen
- 🔄 Convert between any supported currency
- 📡 Fetches current exchange rates from an external API
- ⚡ Simple and fast web interface
- 🛡️ Includes error handling for invalid amounts, API errors, and unsupported currencies
- 🎨 Clean and simple HTML/CSS user interface

🛠️ Technologies Used

- Python
- Bottle Framework
- HTML5
- CSS3
- Requests Library
- ExchangeRate API

📂 Project Structure

Live-CC-App/
│
├── app.py
├── views/
│   └── home.tpl
│
└── README.md

«The HTML code should be saved as "home.tpl" inside the "views" folder because Bottle's "template()" function looks for templates there.»

⚙️ How It Works

1. The user enters the amount to be converted.
2. The user selects the From Currency.
3. The user selects the To Currency.
4. After clicking Convert, the application sends a request to the ExchangeRate API.
5. The latest exchange rates are retrieved.
6. The entered amount is converted through USD as the base currency.
7. The converted amount is displayed on the webpage.

🔄 Conversion Logic

The application uses USD as the base currency.

For example, if converting from INR to EUR:

INR → USD → EUR

The application first determines the USD value of the source currency and then converts that USD value into the target currency.

📦 Installation

1. Clone the repository

git clone https://github.com/your-username/Live-CC-App.git

2. Open the project folder

cd Live-CC-App

3. Install the required packages

pip install bottle requests

4. Run the application

python app.py

The application will run at:

http://localhost:4050

Open this URL in your browser to use the currency converter.

🖥️ Example

If the user enters:

Amount: 100
From: USD
To: INR

The application fetches the latest exchange rate and displays the equivalent INR amount.

100 USD = XX.XX INR

The exact result changes according to the current exchange rate.

🧩 Error Handling

The application handles several common errors:

- Invalid amount: Displays a message if the entered amount cannot be converted to a number.
- API error: Displays a message if the live exchange-rate service cannot be reached.
- Unsupported currency: Handles currencies that are not available in the API response.
- Unexpected errors: Displays an appropriate error message instead of crashing the application.

🔮 Future Improvements

Some possible improvements include:

- 📊 Add historical exchange-rate charts
- 💾 Store previous conversions
- 🌐 Add more currencies
- 📱 Improve mobile responsiveness
- 🎨 Add a modern UI
- 🔢 Add currency symbols
- 🕒 Display the exchange-rate update time
- 🔁 Add a swap-currencies button
- ☁️ Deploy the application online

👩‍💻 Author

Manasi

Built with ❤️ using Python and Bottle.

📄 License

This project is open-source and available for educational and personal use.
