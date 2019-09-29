# musicstreamer
Minimal music streaming service for a university assignment.

There's three components, divided into the three folders:
- `java-api-server`: Java server responsible for providing the web CRUD interface and a JSON api.
- `node-proxy-server`: Node server responsible for proxying client requests to the Java backend server and external authentication server. Also responsible for persisting the session data to Firebase.
- `react-client`: Frontend ReactJS client interface.

## Running
- `java-api-server`: Requires JDK 8 and Maven installed. Then just run: `mvn spring-boot:run`
- `node-proxy-server`: Requires node and npm installed. Then just run: `npm start`
- `react-client`: TODO.
