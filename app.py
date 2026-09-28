from bottle import *
import requests

application = Bottle()


@application.route("/", method=["GET", "POST"])
def home():

    if request.method == "POST":

        try:
            amount = float(request.forms.get("aid"))
            from_currency = request.forms.get("from_currency")
            to_currency = request.forms.get("to_currency")

            url = "https://api.exchangerate-api.com/v4/latest/USD"

            response = requests.get(url, timeout=10)
            response.raise_for_status()

            data = response.json()

            rates = data["rates"]

            # Convert FROM currency to USD
            if from_currency == "USD":
                from_rate = 1
            else:
                from_rate = 1 / rates[from_currency]

            # Convert USD to TO currency
            if to_currency == "USD":
                to_rate = 1
            else:
                to_rate = rates[to_currency]

            # Final conversion
            converted_amount = amount * from_rate * to_rate

            msg = (
                f"{amount} {from_currency} = "
                f"{round(converted_amount, 2)} {to_currency}"
            )

            return template("home", msg=msg)

        except ValueError:
            msg = "Amount should contain numbers only"
            return template("home", msg=msg)

        except requests.exceptions.RequestException:
            msg = "Unable to fetch live exchange rate"
            return template("home", msg=msg)

        except KeyError:
            msg = "Currency is not supported"
            return template("home", msg=msg)

        except Exception as e:
            msg = "Issue: " + str(e)
            return template("home", msg=msg)

    return template("home", msg="")


run(
    application,
    host="localhost",
    port=4050,
    debug=True,
    reloader=True
)
