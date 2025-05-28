# 🧪 API Test Generation with Keploy

The project contains an example about how to use **[Keploy](https://github.com/keploy/keploy)** — an open source tool that generates integration tests by recording real API traffic. It helps improve test coverage without writing tests manually.

## ⚙️ Requirements

- Node.js (v22 or later)
- npm
- [Keploy CLI](https://keploy.io/docs/install)

## 🔬 How to Use

1. **Install dependencies**

   ```bash
   npm install
   ```

2. **Record API traffic with Keploy**

   Start the server using Keploy to capture API calls:

   ```bash
   keploy record -c "npm run start"
   ```

3. **Trigger sample API calls**

   In a separate terminal, run the provided script to simulate API requests:

   ```bash
   ./run-tutorials-api-test.sh
   ```

4. **Init the Database**
   In order to run the tests, we need to clean the database to the first state, by removing Sqlite file `myDatabase.sqlite`:

   ```bash
   rm myDatabase.sqlite
   ```

   **Note**: If you are using [postgres.db.config.js](./app/config/postgres.db.config.js) for database; you need to clean your database using SQL queries.

5. **Run the generated API tests**

   After recording, replay the tests with:

   ```bash
   keploy test -c "npm run start"
   ```

Keploy will validate the API responses against the recorded data, you should see the report in your terminal.

---

For more details, check [the official Keploy documentation.](https://keploy.io/docs/)
