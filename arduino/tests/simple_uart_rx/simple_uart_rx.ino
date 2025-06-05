String incomingMessage = "";

void setup() {
  Serial.begin(115200); // imposta la velocità della UART
  Serial.println("Starting to read...");
}

void loop() {
  // Legge i dati dalla seriale se disponibili
  while (Serial.available() > 0) {
    char received = Serial.read();
    if (received == '\n') { // fine messaggio (newline)
      incomingMessage.trim(); // rimuove spazi e newline
      if (incomingMessage == "invia") {
        doSomething();
      }
      incomingMessage = ""; // reset per il prossimo messaggio
    } else {
      incomingMessage += received;
    }
  }
}

void doSomething() {
  // Funzione simulata: puoi sostituire con ciò che vuoi
  Serial.println("45.123456,12.123456");
  //const char* message = "Ciao STM32!\n";
  //Serial.print(message); // Invia la stringa via UART
}