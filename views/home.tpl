<html>
    <head>
        <title>Live CC App by Manasi</title>

        <style>
            *
            {
                font-size:40px;
                text-align:center;
                font-family:Cambria, Arial;
            }

            body
            {
                background-color:honeydew;
                text-align:center;
            }

            input[type=number]
            {
                width:40%;
                display:block;
                margin:auto;
            }

            select
            {
                font-size:40px;
                margin:10px;
            }

            input[type=submit]
            {
                background-color:black;
                color:white;
                border-radius:10px;
                cursor:pointer;
            }
        </style>
    </head>

    <body>

        <h1>Live CC App by Manasi</h1>

        <form method="POST">

            <input type="number"
                   step="0.01"
                   name="aid"
                   placeholder="Enter Amount"
                   required
            />

            <br/><br/>

            <select name="from_currency" required>

                <option value="INR">INR - Indian Rupee</option>

                <option value="USD">USD - US Dollar</option>

                <option value="EUR">EUR - Euro</option>

                <option value="GBP">GBP - Pound</option>

                <option value="AED">AED - Dirham</option>

                <option value="AUD">AUD - Australian Dollar</option>

                <option value="CAD">CAD - Canadian Dollar</option>

                <option value="JPY">JPY - Japanese Yen</option>

            </select>

            <br/>

            <h2>TO</h2>

            <select name="to_currency" required>

                <option value="INR">INR - Indian Rupee</option>

                <option value="USD">USD - US Dollar</option>

                <option value="EUR">EUR - Euro</option>

                <option value="GBP">GBP - Pound</option>

                <option value="AED">AED - Dirham</option>

                <option value="AUD">AUD - Australian Dollar</option>

                <option value="CAD">CAD - Canadian Dollar</option>

                <option value="JPY">JPY - Japanese Yen</option>

            </select>

            <br/><br/>

            <input type="submit"
                   value="Convert"
            />

        </form>

        <h2>{{msg}}</h2>

    </body>
</html>
