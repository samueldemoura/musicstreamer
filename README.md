# musicstreamer

Minimal music streaming service for a university assignment.

There's three components, divided into the three folders:

- `java-api-server`: Java server responsible for providing the web CRUD interface and a JSON api.
- `node-proxy-server`: Node server responsible for proxying client requests to the Java backend server and external authentication server. Also responsible for persisting the session data to Firebase.
- `react-client`: Frontend ReactJS client interface.

## Running

- `java-api-server`: Requires JDK 8 and Maven installed. Then just run: `mvn spring-boot:run`
- `node-proxy-server`: Requires node and npm installed. Generate a private key file for your Firebase project, then dump it in `node-proxy-server/secrets/firebase-private-key.json`. Build the Webpack bundles from `react-client` and dump them in `node-proxy-server/static/`. Afterwards, run: `npm start`. Server should then be up at `http://localhost:3000`.
- `react-client`: Access the project folder with the terminal and execute the CLI <code>npm install</code> or <code>yarn</code>. Run application in development mode <code>npm start</code> or <code>yarn start</code>. Access in your browser <a href="http://localhost:3001">http://localhost:3001</a>.
